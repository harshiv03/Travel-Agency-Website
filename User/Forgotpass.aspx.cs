using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class User_Default3 : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry, fname;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "select * from user_mstr where Uemailid='" + txtemail.Text + "'";

        x.dr = x.search(qry);
        if (x.dr.HasRows)
        {
            x.dr.Read();
            MailMessage mail = new MailMessage();
            string mailid = txtemail.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("infotech.kakshi@gmail.com");
            mail.Subject = "Password :";
            string Body = "Your Password is: " + x.dr["upass"].ToString();
            mail.Body = Body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("infotech.kakshi@gmail.com", "bhushan611");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        else
        {
            Label1.Text = "Record Not Found";
        }
        x.conclose();
    }
}