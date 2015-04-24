using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InvoiceData
/// </summary>
public class InvoiceData
{
    private double salesTax;


	public InvoiceData()
	{

	}
    public double SalesTax
    {
        get { return salesTax; }
        set { salesTax = value; }
    } 
}