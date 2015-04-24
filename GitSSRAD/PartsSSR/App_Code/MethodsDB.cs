using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

/// <summary>
/// Summary description for MethodsDB
/// 



[DataObject(true)]
public static class MethodsDB
{
    #region Categories
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetCategories()
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT CategoryID, ShortName "
            + "FROM Categories ORDER BY ShortName";
        SqlCommand cmd = new SqlCommand(sel, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return dr;
    }


    #endregion

    #region Products

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetProductsByCategory(string CategoryID)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT Name, ShortDescription,ImageFile "
            + "UnitPrice, OnHand "
            + "FROM Products "
            + "WHERE CategoryID = 'ps' "
            + "ORDER BY Name";
        SqlCommand cmd = new SqlCommand(sel, con);
     //   cmd.Parameters.AddWithValue("CategoryID", CategoryID);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return dr;
    }





    #endregion

    #region Customers

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetCustomer()
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT Email,LastName,  FirstName,  Address,  City,  County,  PhoneNumber,Password, UserName "
            + "FROM Customers ORDER BY LastName";
        SqlCommand cmd = new SqlCommand(sel, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return dr;
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static int InsertCustomer(string Email,
        string LastName, string FirstName, string Address, string City, char County, string PhoneNumber,
        string Password,string UserName)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string ins = "INSERT INTO Customers "
            + "(Email,LastName,  FirstName,  Address,  City,  County,  PhoneNumber,Password, UserName)"
            + "VALUES(@Email, @LastName, @FirstName,@Address,@City,@County,@PhoneNumber,@Password,@UserName)";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("LastName", LastName);
        cmd.Parameters.AddWithValue("FirstName", FirstName);
        cmd.Parameters.AddWithValue("Address", Address);
        cmd.Parameters.AddWithValue("City", City);
        cmd.Parameters.AddWithValue("County", County);
        cmd.Parameters.AddWithValue("PhoneNumber", PhoneNumber);
        cmd.Parameters.AddWithValue("Password", Password);
        cmd.Parameters.AddWithValue("UserName", UserName);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
    [DataObjectMethod(DataObjectMethodType.Delete)]
    public static int DeleteCustomer(string original_Email,
        string original_LastName, string original_FirstName, string original_Address, string original_City,
        char original_County, string original_PhoneNumber,
        string original_Password, string original_UserName)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string del = "DELETE FROM Customers "
            + "WHERE Email = @original_Email "
            + "AND LastName = @original_LastName "
            + "AND FirstName = @original_FirstName"
             + "AND Address = @original_Address "
              + "AND City = @original_City "
               + "AND County = @original_County "
                + "AND PhoneNumber = @original_PhoneNumber "
                 + "AND Password = @original_Password "
                  + "AND UserName = @original_UserName ";
        SqlCommand cmd = new SqlCommand(del, con);
        cmd.Parameters.AddWithValue("original_Email", original_Email);
        cmd.Parameters.AddWithValue("original_LastName", original_LastName);
        cmd.Parameters.AddWithValue("original_FirstName", original_FirstName);
        cmd.Parameters.AddWithValue("original_Address", original_Address);
        cmd.Parameters.AddWithValue("original_City", original_City);
        cmd.Parameters.AddWithValue("original_County", original_County);
        cmd.Parameters.AddWithValue("original_PhoneNumber", original_PhoneNumber);
        cmd.Parameters.AddWithValue("original_Password", original_Password);
        cmd.Parameters.AddWithValue("original_UserName", original_UserName);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int UpdateCustomer(string Email,
        string LastName, string FirstName, string Address, string City, char County, string PhoneNumber,
        string Password, string UserName, string original_Email,
        string original_LastName, string original_FirstName, string original_Address, string original_City,
        char original_County, string original_PhoneNumber,
        string original_Password, string original_UserName)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string up = "UPDATE Customers "
            + "SET Email = @Email, "
            + "LastName = @LastName "
            + "FirstName = @FirstName "
            + "Address = @Address "
            + "City = @City "
            + "County = @County "
            + "PhoneNumber = @PhoneNumber "
            + "Password = @Password "
            + "UserName = @UserName "
            + "WHERE Email = @original_Email "
            + "AND LastName = @original_LastName "
            + "AND FirstName = @original_FirstName"
            + "AND Address = @original_Address"
            + "AND City = @original_City"
            + "AND County = @original_County"
            + "AND PhoneNumber = @original_PhoneNumber"
            + "AND Password = @original_Password"
            + "AND UserName = @original_UserName";
        SqlCommand cmd = new SqlCommand(up, con);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("LastName", LastName);
        cmd.Parameters.AddWithValue("FirstName", FirstName);
        cmd.Parameters.AddWithValue("Address", Address);
        cmd.Parameters.AddWithValue("City", City);
        cmd.Parameters.AddWithValue("County", County);
        cmd.Parameters.AddWithValue("PhoneNumber", PhoneNumber);
        cmd.Parameters.AddWithValue("Password", Password);
        cmd.Parameters.AddWithValue("UserName", UserName);
        cmd.Parameters.AddWithValue("original_Email", original_Email);
        cmd.Parameters.AddWithValue("original_LastName", original_LastName);
        cmd.Parameters.AddWithValue("original_FirstName", original_FirstName);
        cmd.Parameters.AddWithValue("original_Address", original_Address);
        cmd.Parameters.AddWithValue("original_City", original_City);
        cmd.Parameters.AddWithValue("original_County", original_County);
        cmd.Parameters.AddWithValue("original_PhoneNumber", original_PhoneNumber);
        cmd.Parameters.AddWithValue("original_Password", original_Password);
        cmd.Parameters.AddWithValue("original_UserName", original_UserName);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }



    #endregion

    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["PartsForPlebsConnectionString"].ConnectionString;
    }
    //public static int InsertCustomer2(string Email,
    //string LastName, string FirstName, string Address, string City, char County, string PhoneNumber,
    //string Password, string UserName)
    //{
    //    SqlConnection con = new SqlConnection(GetConnectionString());
    //    string ins = "INSERT INTO Customers "
    //        + "(Email,LastName,  FirstName,  Address,  City,  County,  PhoneNumber,Password, UserName)"
    //        + "VALUES(@Email, @LastName, @FirstName,@Address,@City,@County,@PhoneNumber,@Password,@UserName)";
    //    SqlCommand cmd = new SqlCommand(ins, con);
    //    cmd.Parameters.AddWithValue("Email", Email);
    //    cmd.Parameters.AddWithValue("LastName", LastName);
    //    cmd.Parameters.AddWithValue("FirstName", FirstName);
    //    cmd.Parameters.AddWithValue("Address", Address);
    //    cmd.Parameters.AddWithValue("City", City);
    //    cmd.Parameters.AddWithValue("County", County);
    //    cmd.Parameters.AddWithValue("PhoneNumber", PhoneNumber);
    //    cmd.Parameters.AddWithValue("Password", Password);
    //    cmd.Parameters.AddWithValue("UserName", UserName);
    //    con.Open();
    //    int i = cmd.ExecuteNonQuery();
    //    return i;
    //}


    public static void InsertCustomer2(string Email,
    string LastName, string FirstName, string Address, string City, char County, string PhoneNumber,
    string Password, string UserName)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string ins = "INSERT INTO Customers "
            + "(Email,LastName,  FirstName,  Address,  City,  County,  PhoneNumber,Password, UserName)"
            + "VALUES(@Email, @LastName, @FirstName,@Address,@City,@County,@PhoneNumber,@Password,@UserName)";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("LastName", LastName);
        cmd.Parameters.AddWithValue("FirstName", FirstName);
        cmd.Parameters.AddWithValue("Address", Address);
        cmd.Parameters.AddWithValue("City", City);
        cmd.Parameters.AddWithValue("County", County);
        cmd.Parameters.AddWithValue("PhoneNumber", PhoneNumber);
        cmd.Parameters.AddWithValue("Password", Password);
        cmd.Parameters.AddWithValue("UserName", UserName);
        con.Open();
        throw new NotImplementedException();
    }
}

