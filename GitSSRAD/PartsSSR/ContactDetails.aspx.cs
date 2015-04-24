using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ContactDetails : System.Web.UI.Page
{
    DateTime time = DateTime.Now;
    string format = "dd mm yyyy hh:mm";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClr_Click(object sender, EventArgs e)
    {
        this.TraverseControlsAndSetTextEmpty(this);
    }

    private void TraverseControlsAndSetTextEmpty(Control control)
    {
        foreach (Control c in control.Controls)
        {
            var box = c as TextBox;
            if (box != null)
            {
                box.Text = string.Empty;
            }

            this.TraverseControlsAndSetTextEmpty(c);
        }

    }


    protected void btnProceed_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(MethodsDB.GetConnectionString());
        string ins = "INSERT INTO Customers "
            + "(Email,LastName,  FirstName,  Address,  City,  County,  PhoneNumber,Password, UserName, CreatedDate, DeliveryAddress, DeliveryCity, DeliveryCounty)"
            + "VALUES(@Email, @LastName, @FirstName,@Address,@City,@County,@PhoneNumber,@Password,@UserName, @CreatedDate, @DeliveryAddress,@DeliveryCity,@DeliveryCounty)";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.Parameters.AddWithValue("Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("LastName", txtLname.Text);
        cmd.Parameters.AddWithValue("FirstName", txtFname.Text);
        cmd.Parameters.AddWithValue("Address", txtAddress.Text);
        cmd.Parameters.AddWithValue("City", txtCity.Text);
        cmd.Parameters.AddWithValue("County", dlCounty.Text);
        cmd.Parameters.AddWithValue("PhoneNumber", txtPhone.Text);
        cmd.Parameters.AddWithValue("Password", txtPass.Text);
        cmd.Parameters.AddWithValue("UserName", txtUserName.Text);
        cmd.Parameters.AddWithValue("CreatedDate", DateTime.Now.ToString("dd/MM/yyyy"));
        cmd.Parameters.AddWithValue("DeliveryAddress", txtDelAddress.Text);
        cmd.Parameters.AddWithValue("DeliveryCity", txtDelCity.Text);
        cmd.Parameters.AddWithValue("DeliveryCounty", dlDelCounty.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


    }
    protected void bynCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
        this.Close();

    }
    private void Close()
    {
        throw new NotImplementedException();
    }

    protected void chkbDelivery_CheckedChanged(object sender, EventArgs e)
    {
        if (chkbDelivery.Checked) 
        {
            txtDelAddress.Text = txtAddress.Text; ;
            txtDelCity.Text = txtCity.Text ;
            dlDelCounty.Text = dlCounty.Text ;
        
        }

    }
    protected void btnDefaults_Click(object sender, EventArgs e)
    {



    }
}