using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Invoices
/// </summary>
public class Invoices
{
    private int invoiceNumber;
    private string custEmail;
    private DateTime orderDate;
    private double subTotal;
    private string shipMethod;
    private double shipping;
    private double salesTax;
    private double total;
    private string creditCardType;
    private string cardNumber;
    private int expirationMonth;
    private int expirationYear;
	public Invoices()
	{

	}

    public int InvoiceNumber
    {
        get { return invoiceNumber; }
        set { invoiceNumber = value; }
    }
    public string CustEmail
    {
        get { return custEmail; }
        set { custEmail = value; }
    }
    public DateTime OrderDate
    {
        get { return orderDate; }
        set { orderDate = value; }
    }
    public double SubTotal
    {
        get { return subTotal; }
        set { subTotal = value; }
    }
    public string ShipMethod
    {
        get { return shipMethod; }
        set { shipMethod = value; }
    }
    public double Shipping
    {
        get { return shipping; }
        set { shipping = value; }
    }
    public double SalesTax
    {
        get { return salesTax; }
        set { salesTax = value; }
    }
    public double Total
    {
        get { return total; }
        set { total = value; }
    }
    public string CreditCardType
    {
        get { return creditCardType; }
        set { creditCardType = value; }
    }
    public string CardNumber
    {
        get { return cardNumber; }
        set { cardNumber = value; }
    }
    public int ExpirationMonth
    {
        get { return expirationMonth; }
        set { expirationMonth = value; }
    }
    public int ExpirationYear
    {
        get { return expirationYear; }
        set { expirationYear = value; }
    }


}
