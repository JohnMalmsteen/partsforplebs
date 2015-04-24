using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Products
/// </summary>
public class Products
{

    private int productID;


         private string name;
         private string shortDescription;
         private string longDescription;
         private string categoryID;
         private string imageFile;
         private double unitPrice;
         private int onHand;
         private string manufacturer;
         private string productType;
         private string socketType;
         private string clockSpeed;
         private int noStrips;
         private string efficiencyRating;
         private int wattage;
         private bool modularity;
         private string dimentions;
         private int powerSupply;
         private string inter_Face;
         private string formFactor;
         private string capacity;
         private string memoryType;
         private int powerDraw;
         private int noCores;
         private string memorySize;
         private string weight;
 

    public Products()
    {
    }

    public int ProductID
    {
        get { return productID; }
        set { productID = value; }
    }
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string ShortDescription
    {
        get { return shortDescription; }
        set { shortDescription = value; }
    }
    public string LongDescription
    {
        get { return longDescription; }
        set { longDescription = value; }
    }
    public string CategoryID
    {
        get { return categoryID; }
        set { categoryID = value; }
    }
    public string ImageFile
    {
        get { return imageFile; }
        set { imageFile = value; }
    }
    public double UnitPrice
    {
        get { return unitPrice; }
        set { unitPrice = value; }
    }
    public int OnHand
    {
        get { return onHand; }
        set { onHand = value; }
    }
    public string Manufacturer
    {
        get { return manufacturer; }
        set { manufacturer = value; }

    }
    public string ProductType
    {
        get { return productType; }
        set { productType = value; }
    }
    public string SocketType
    {
        get { return socketType; }
        set { socketType = value; }
    }
    public string ClockSpeed
    {
        get { return clockSpeed; }
        set { clockSpeed = value; }
    }
    public int NoStrips
    {
        get { return noStrips; }
        set { noStrips = value; }
    }
    public string EfficiencyRating
    {
        get { return efficiencyRating; }
        set { efficiencyRating = value; }
    }
    public int Wattage
    {
        get { return wattage; }
        set { wattage = value; }
    }
    public bool Modularity
    {
        get { return modularity; }
        set { modularity = value; }
    }
    public string Dimentions
    {
        get { return dimentions; }
        set { dimentions = value; }
    }
    public int PowerSupply
    {
        get { return powerSupply; }
        set { powerSupply = value; }
    }
    public string Inter_Face
    {
        get { return inter_Face; }
        set { inter_Face = value; }
    }
    public string FormFactor
    {
        get { return formFactor; }
        set { formFactor = value; }
    }
    public string Capacity
    {
        get { return capacity; }
        set { capacity = value; }
    }
    public string MemoryType
    {
        get { return memoryType; }
        set { memoryType = value; }
    }
    public int PowerDraw
    {
        get { return powerDraw; }
        set { powerDraw = value; }
    }
    public int NoCores
    {
        get { return noCores; }
        set { noCores = value; }
    }
    public string MemorySize
    {
        get { return memorySize; }
        set { memorySize = value; }
    }
    public string Weight
    {
        get { return weight; }
        set { weight = value; }
    }

}

