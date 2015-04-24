using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;

public partial class ProcessorPage : System.Web.UI.Page
{
    Products selectedProduct = new Products();

    protected void Page_Load(object sender, EventArgs e)
    {
        ListView1.DataSourceID = "SqlDataSource1";
        ListView1.ItemCommand += new EventHandler<ListViewCommandEventArgs>(Listview1_ItemCommand); 
        selectedProduct = this.GetSelectedProduct();
    }
    protected void lbtnPrice50_Click(object sender, EventArgs e)
    {
        ListView1.DataSourceID = "SqlDataSource2";
    }

    protected void Listview1_ItemCommand(object sender, ListViewCommandEventArgs e) 
    {
        if (e.CommandName.ToString() == "Add")
        {

            if (Page.IsValid)
            {
                CartItem item = new CartItem();
                item.Product = selectedProduct;
                item.Quantity = 1;
                
                this.AddToCart(item);
                Response.Redirect("shoppingCart.aspx");
            }      
        
        }   
    }

    private Products GetSelectedProduct()
    {
        DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        productsTable.RowFilter = "Name = '" + ListView1.SelectedValue + "'";
        DataRowView row = (DataRowView)productsTable[0];
        Products p = new Products();

        p.ProductID = (int)row["ProductID"];
        p.Name = row["Name"].ToString();
        p.ShortDescription = row["ShortDescription"].ToString();
        p.UnitPrice = (double)row["UnitPrice"];
        p.ImageFile = row["ImageFile"].ToString();
        return p;

    }
    private void AddToCart(CartItem item)
    {
        SortedList cart = this.GetCart();
        string productID = selectedProduct.ProductID.ToString();
        if (cart.ContainsKey(productID))
        {
            CartItem existingItem = (CartItem)cart[productID];
            existingItem.Quantity += 1;
        }
        else
            cart.Add(productID, item);
    }

    private SortedList GetCart()
    {
        if (Session["Cart"] == null)
            Session.Add("Cart", new SortedList());
        return (SortedList)Session["Cart"];
    }
}