using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Categories
/// </summary>
public class Categories
{

    private string categoryID;
    private string shortName;

	public Categories()
	{
	}
    public string CategoryID
    {
        get { return categoryID; }
        set { categoryID = value; }
    }
    public string ShortName
    {
        get { return shortName; }
        set { shortName = value; }
    }
}