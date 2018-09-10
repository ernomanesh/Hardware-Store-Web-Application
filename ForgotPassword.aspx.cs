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
using System.Net.Mail;
using System.Net;



public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void PassReset_Click(object sender, EventArgs e)
    {
        String CS =ConfigurationManager.ConnectionStrings["MySignUpDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Users where Email='"+tbEmailId.Text+"'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if(dt.Rows.Count !=0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassReset values('" + myGUID + "','"+Uid+"',getdate())",con);
                cmd1.ExecuteNonQuery();

                //send email
                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username= dt.Rows[0][1].ToString();
                String EmailBody = "Hi"+Username+ ",<br/><br/> Please Click the link below to reset your Password.<br/><br/>http://localhost:54824/ForgotPassword.aspx?Uid=" + myGUID;
                MailMessage PassResetMail = new MailMessage("youremail@gmail.com", ToEmailAddress);
                PassResetMail.Body = EmailBody;
                PassResetMail.IsBodyHtml = true;
                PassResetMail.Subject = "Reset Password";
                
                SmtpClient SMTP = new SmtpClient("smtp.gmail.com",587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "yourusername@gmail.com",
                    Password = "YourGmailPassword"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassResetMail);

                LblPassReset.Text = "Check your email to reset your PASSWORD ";
                LblPassReset.ForeColor = Color.Green;
            }
            else
            {
                LblPassReset.Text = "Oops!This email does not exist in our Database.Please reenter your email.";
                LblPassReset.ForeColor = Color.Red;
            }
        }
    }
}