using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AddProducts : System.Web.UI.Page
{
  public static  String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrands();
            BindCategory();
            BindGenre();
            ddlSubCategory.Enabled = false;
           ddlGenre.Enabled = false;
        }
    }

    private void BindGenre()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblGenre", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
               ddlGenre.DataSource = dt;
                ddlGenre.DataTextField = "GenreName";
                ddlGenre.DataValueField = "GenreID";
                ddlGenre.DataBind();
               ddlGenre.Items.Insert(0, new ListItem("-select-", "0"));
            }
        }
    }

    private void BindCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblCategories", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-select-", "0"));
            }
        }
    }

    private void BindBrands()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblBrands", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrand.DataSource = dt;
                ddlBrand.DataTextField = "Name";
                ddlBrand.DataValueField = "BrandID";
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0, new ListItem("-select-", "0"));
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("ProcInsertProducts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductName", txtPname.Text);
            cmd.Parameters.AddWithValue("@ProductPrice", txtPPrice.Text);
            cmd.Parameters.AddWithValue("@ProductSellPrice", txtSellingPrice.Text);
            cmd.Parameters.AddWithValue("@ProductBrandID", ddlBrand.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProductCategoryID", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProductSubCategoryID", ddlSubCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProductGenre", ddlGenre.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ProductDescrption", txtDescrption.Text);
            cmd.Parameters.AddWithValue("@ProductDetails", txtPDetails.Text);
            cmd.Parameters.AddWithValue("@ProductMaterialCare", txtMatCare.Text);
            if (cbFD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
            }
            if (cb30DaysReturn.Checked == true)
            {
                cmd.Parameters.AddWithValue("@30DaysReturn", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@30DaysReturn", 0.ToString());
            }
            if (cbCOD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }
            con.Open();
            Int64 ProductID =Convert.ToInt64(cmd.ExecuteScalar());
            //insert size quantity
            for (int i = 0; i < cblSize.Items.Count; i++)
            {
                if (cblSize.Items[i].Selected == true)
                {
                    Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
                    int Quantity = Convert.ToInt32(txtQuantity.Text);

                    SqlCommand cmd2 = new SqlCommand("insert into tblProductSizeQuantity values('" + ProductID + "','" + SizeID + "','" + Quantity + "')", con);
                    cmd2.ExecuteNonQuery();
                }
            }
            //insert and upload images
            if (fuImg1.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/Product Images/") + ProductID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg1.PostedFile.FileName);
                fuImg1.SaveAs(SavePath + "\\" + txtPname.Text.ToString().Trim() + "1" + Extention);

                SqlCommand cmd3 = new SqlCommand("insert into tblProductsImages values ('" + ProductID + "','" + txtPname.Text.ToString().Trim() + "1" + "','" + Extention + "')", con);
                cmd3.ExecuteNonQuery();
            }
            if (fuImg2.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/Product Images/") + ProductID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg2.PostedFile.FileName);
                fuImg1.SaveAs(SavePath + "\\" + txtPname.Text.ToString().Trim() + "2" + Extention);

                SqlCommand cmd4 = new SqlCommand("insert into tblProductsImages values ('" + ProductID + "','" + txtPname.Text.ToString().Trim() + "2" + "','" + Extention + "')", con);
                cmd4.ExecuteNonQuery();
            }
            if (fuImg3.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/Product Images/") + ProductID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg3.PostedFile.FileName);
                fuImg1.SaveAs(SavePath + "\\" + txtPname.Text.ToString().Trim() + "3" + Extention);

                SqlCommand cmd5 = new SqlCommand("insert into tblProductsImages values ('" + ProductID + "','" + txtPname.Text.ToString().Trim() + "3" + "','" + Extention + "')", con);
                cmd5.ExecuteNonQuery();
            }
            if (fuImg4.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/Product Images/") + ProductID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg4.PostedFile.FileName);
                fuImg1.SaveAs(SavePath + "\\" + txtPname.Text.ToString().Trim() + "4" + Extention);

                SqlCommand cmd6 = new SqlCommand("insert into tblProductsImages values ('" + ProductID + "','" + txtPname.Text.ToString().Trim() + "4" + "','" + Extention + "')", con);
                cmd6.ExecuteNonQuery();
            }
            if (fuImg5.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/Product Images/") + ProductID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg5.PostedFile.FileName);
                fuImg1.SaveAs(SavePath + "\\" + txtPname.Text.ToString().Trim() + "5" + Extention);

                SqlCommand cmd7 = new SqlCommand("insert into tblProductsImages values ('" + ProductID + "','" + txtPname.Text.ToString().Trim() + "5" + "','" + Extention + "')", con);
                cmd7.ExecuteNonQuery();
            }
        }
    }
    
    protected void ddlCategory_SelectedIndexChange(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

        String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblSubCategories where MainCategoryID='" + ddlCategory.SelectedItem.Value + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "SubCategoryName";
                ddlSubCategory.DataValueField = "SubCategoryID";
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, new ListItem("-select-", "0"));
                ddlSubCategory.Enabled = true;
            }
        }
    }

    protected void ddlGenre_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblSize where BrandID='"+ddlBrand.SelectedItem.Value + "' and CategoryID='" + ddlCategory.SelectedItem.Value + "' and SubCategoryID='" + ddlSubCategory.SelectedItem.Value + "' and GenreID='"+ddlGenre.SelectedItem.Value+"' ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
             cblSize.DataSource = dt;
                cblSize.DataTextField = "SizeName";
                cblSize.DataValueField = "SizeID";
                cblSize.DataBind();
              
            }
        }
    }

    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSubCategory.SelectedIndex != 0)
        {
            ddlGenre.Enabled = true;
        }
    }
}