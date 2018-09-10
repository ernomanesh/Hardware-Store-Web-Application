using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["USERNAME"] != null)
        {
            BtnSignOut.Visible = true;
            btnSignIn.Visible = false;
            BtnSignOut.Visible = true;
        }
        else
        {
            BtnSignOut.Visible = false;
            btnSignIn.Visible = true;
            BtnSignOut.Visible = false;
        }
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
            pCount.InnerText =0.ToString();
        }
    }

    protected void BtnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}