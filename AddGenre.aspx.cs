using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddGenre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindBrandsRptr();
    }

    private void BindBrandsRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblGenre", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dtBrands = new DataTable();
                sda.Fill(dtBrands);
                rptrCategory.DataSource = dtBrands;
                rptrCategory.DataBind();
            }

        }
    }
}

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Insert into tblGenre values('" + txtGenreName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtGenreName.Text = string.Empty;
        }
        BindBrandsRptr();
    }
}