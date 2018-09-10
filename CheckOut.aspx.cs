using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckOut : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCompleteOrder_Click(object sender, EventArgs e)
    {
                String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("Insert into tblshippinginformation values('" + txtorderID.Text + "','" + txtUn.Text + "','" + txtaddre.Text + "','" + txtconta.Text + "','" + txtpay.Text + "','" + txtprodids.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("ThankYou.aspx");
                }

            }
        }
    