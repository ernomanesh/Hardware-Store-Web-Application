using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();

        if (Session["USERNAME"] != null)
        {
            BtnSignOut.Visible = true;
            btnSignIn.Visible = false;
            lblSuccess.Text = "Login Sucessful,Welcome again:  "+Session["USERNAME"].ToString()+"";
        }
else
        {
            BtnSignOut.Visible = false;
            btnSignIn.Visible = true;
        }
    }

    protected void BtnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignIn.aspx");
    }
    public void BindCartNumber()
    {
        if (Request.Cookies["CartProductID"] != null)
        {
            string CookieProductID = Request.Cookies["CartProductID"].Value.Split('=')[1];
            string[] ProductArray = CookieProductID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }
}