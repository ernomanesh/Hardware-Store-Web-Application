using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btnsignup_Click(object sender, EventArgs e)
    {
        if (Tbuname.Text != "" & Tbpass.Text != "" && Tbname.Text != "" && Tbemail.Text != "" && Tbconpass.Text != "")
        {
            if (Tbpass.Text == Tbconpass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("Insert into Users values('" + Tbuname.Text + "','" + Tbpass.Text + "','" + Tbname.Text + "','" + Tbemail.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    LblMsgs.Text = "Registration Sucessful";
                    LblMsgs.ForeColor = Color.Green;
                    Response.Redirect("SignIn.aspx");
                }

            }
            else
            {
                LblMsgs.ForeColor = Color.Red;
                LblMsgs.Text = "Password do not match";
            }
        }
        else
        {
            LblMsgs.ForeColor = Color.Red;
            LblMsgs.Text = "Please fill all fields";
        }

    }
}