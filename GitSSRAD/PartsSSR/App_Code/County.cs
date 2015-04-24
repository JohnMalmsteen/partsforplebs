using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for County
/// </summary>
public class County
{
    private char countyCode;
    private string countyName;

	public County()
	{

	}
    public char CountyCode
    {
        get { return countyCode; }
        set { countyCode = value; }
    }
    public string CountyName
    {
        get { return countyName; }
        set { countyName = value; }
    }
}