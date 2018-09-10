using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class RecoverPassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
    String GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            GUIDvalue = Request.QueryString["Uid"];
            if(GUIDvalue!=null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPassReset where id='"+GUIDvalue+"'",con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid =Convert.ToInt32 (dt.Rows[0][1]);
                }
                else
                {
                    LblMsg.Text = "Your password reset link is expired or invalid";
                    LblMsg.ForeColor = Color.Red;
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        if(!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                tbNewPass.Visible = true;
                tbConfirmPass.Visible = true;
                LblPass.Visible = true;
                LblRetypepass.Visible = true;
                btPassReset.Visible = true;
            }
            else
            {
                LblMsg.Text = "Your password reset link is expired or invalid";
                LblMsg.ForeColor = Color.Red;
            }
        }
    }

    protected void btPassReset_Click(object sender, EventArgs e)
    {
        if(tbNewPass.Text!="" && tbConfirmPass.Text!="" && tbNewPass.Text==tbConfirmPass.Text)
        {

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Update Users set Password='"+tbNewPass.Text+"' Where Uid='"+Uid+"'",con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("delete from ForgotPassReset Where Uid='"+Uid+"'",con);
            cmd2.ExecuteNonQuery();
            Response.Redirect("SignIn.aspx");
        }

        }
    }
}