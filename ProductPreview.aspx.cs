using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductPreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ProductID"] != null)
        {
            if (!IsPostBack)
            {
                BindProductsImages();
                BindProductDetails();
            }
        }
        else
        {
            Response.Redirect("~/Products.aspx");
        }
    }

    private void BindProductDetails()
    {
        Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);

        String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProducts where ProductID=" + ProductID + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrProductDetails.DataSource = dtBrands;
                    rptrProductDetails.DataBind();
                }

            }
        }
    }

    private void BindProductsImages()
    {
        Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);

        String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProductsImages where ProductID="+ ProductID + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrimages.DataSource = dtBrands;
                    rptrimages.DataBind();
                }

            }
        }
    }
    protected string GetActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }

    protected void rptrProductDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if(e.Item.ItemType==ListItemType.Item|| e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
            string CategoryID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
            string SubCategoryID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;
            string GenreID = (e.Item.FindControl("hfGenreID") as HiddenField).Value;

            RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;

            String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using( SqlCommand cmd = new SqlCommand("select * from tblSize where BrandID="+ BrandID + "and CategoryID="+ CategoryID + "and SubCategoryID="+ SubCategoryID+ "and GenreID="+ GenreID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rblSize.DataSource = dtBrands;
                        rblSize.DataTextField = "SizeName";
                        rblSize.DataValueField = "SizeID";
                        rblSize.DataBind();
                    }
                }
            }
        }
    }

    protected void btnAddtoCart_Click(object sender, EventArgs e)
    {
        string selectedSize = string.Empty;
        foreach (RepeaterItem item in rptrProductDetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rbList = item.FindControl("RblSize") as RadioButtonList;
                selectedSize = rbList.SelectedValue;

                var lblerror = item.FindControl("lblerror") as Label;
                lblerror.Text = "";
            }
        }

        if (selectedSize != "")
        {
        Int64 ProductID = Convert.ToInt64(Request.QueryString["ProductID"]);
        if (Request.Cookies["CartProductID"] != null)
        {
            string CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
            CookieProductID = CookieProductID + "," + ProductID + "-" + selectedSize;

            HttpCookie CartProducts = new HttpCookie("CartProductID");
            CartProducts.Values["CartProductID"] = CookieProductID;
            CartProducts.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProducts);
        }
        else
        {
            HttpCookie CartProducts = new HttpCookie("CartProductID");
            CartProducts.Values["CartProductID"] = ProductID.ToString()+"-"+ selectedSize;
            CartProducts.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProducts);
        }
            Response.Redirect("~/ProductPreview.aspx?ProductID=" + ProductID);
    }
        else
        {
            foreach(RepeaterItem item in rptrProductDetails.Items)
            {
                if(item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblerror = item.FindControl("lblerror") as Label;
                    lblerror.Text = "Please Select a Size";

                }
            }
        }

    }

}