using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LineItems
/// </summary>
public class LineItems
{

    private int invoiceNumber;
    private int productID;
    private double unitPrice;
    private int quantity;
    private double extension;

	public LineItems()
	{

	}

    public int InvoiceNumber
    {
        get { return invoiceNumber; }
        set { invoiceNumber = value; }
    }
    public int ProductID
    {
        get { return productID; }
        set { productID = value; }
    }
    public double UnitPrice
    {
        get { return unitPrice; }
        set { unitPrice = value; }
    }
    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }
    public double Extension
    {
        get { return extension; }
        set { extension = unitPrice*quantity; }
    }

}