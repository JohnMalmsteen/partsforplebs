using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customers
/// </summary>
public class Customers
{
    private string email;
    private string lastName;
    private string firstName;
    private string address;
    private string city;
    private char county;
    private string phoneNumber;
    private string password;
    private string userName;

	public Customers()
	{

	}

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    public string City
    {
        get { return city; }
        set { city = value; }
    }
    public char County
    {
        get { return county; }
        set { county = value; }
    }
    public string PhoneNumber
    {
        get { return phoneNumber; }
        set { phoneNumber = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
}