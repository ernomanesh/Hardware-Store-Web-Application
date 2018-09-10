using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCartProducts();
        }
    }

    private void BindCartProducts()
    {
        if (Request.Cookies["CartProductID"] != null)
        {
           
            string CookieData = Request.Cookies["CartProductID"].Value.Split('=')[1];
            string[] CookieDataTray = CookieData.Split(',');
            if (CookieDataTray.Length > 0)
            {
                h5NiItems.InnerText = "MY CART (" + CookieDataTray.Length + " Items)";
                DataTable dtBrands = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;
                for (int i = 0; i < CookieDataTray.Length; i++)
                {
                    string ProductID = CookieDataTray[i].ToString().Split('-')[0];
                    string SizeID = CookieDataTray[i].ToString().Split('-')[1];


                    String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getSizeName(" + SizeID + ") as SizeNamee,"
                            + SizeID + " as SizeIDD,SizeData.Name, SizeData.Extention from tblProducts A cross apply(select top 1 B.Name, Extention from tblProductsImages B where B.ProductID = A.ProductID)SizeData where A.ProductID=" 
                            + ProductID + "", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                               
                                sda.Fill(dtBrands);
                               
                            }

                        }
                    }
                    CartTotal += Convert.ToInt64(dtBrands.Rows[i]["ProductPrice"]);
                    Total += Convert.ToInt64(dtBrands.Rows[i]["ProductSellPrice"]);
                }
                rptrCartProducts.DataSource = dtBrands;
                rptrCartProducts.DataBind();
                divPriceDetails.Visible = true;

                SpanCartTotal.InnerText = CartTotal.ToString();
                SpanTotal.InnerText ="$:"+ Total.ToString();
                SpanDiscount.InnerText = "-" + (CartTotal-Total).ToString();
            }
            else
            {
                h5NiItems.InnerText = "Your Shopping Cart is Empty";
                divPriceDetails.Visible = false;
            }
        }
        else
        {
            h5NiItems.InnerText = "Your Shopping Cart is Empty";
            divPriceDetails.Visible = false;
        }
    }
    protected void btnRemoveItem_Click1(object sender, EventArgs e)
    {
        string CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
        Button btn = (Button)(sender);
        string ProductIDSIZE = btn.CommandArgument;

        List<string> CookieProductIDList=CookieProductID.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
        CookieProductIDList.Remove(ProductIDSIZE);
        string CookieProductIDUpdated = String.Join(",", CookieProductIDList.ToArray());
        if (CookieProductIDUpdated == "")
        {
            HttpCookie CartProducts = Request.Cookies["CartProductID"];
            CartProducts.Values["CartProductID"] = null;
            CartProducts.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(CartProducts);

        }
        else
        {
            HttpCookie CartProducts = Request.Cookies["CartProductID"];
            CartProducts.Values["CartProductID"] = CookieProductIDUpdated;
            CartProducts.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProducts);

        }
        Response.Redirect("~/Cart.aspx");
    }


    protected void btnBuyNow_Click(object sender, EventArgs e)
    
        {
            Response.Redirect("CheckOut.aspx");
        }

    protected void btncontinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products.aspx");
    }
}

