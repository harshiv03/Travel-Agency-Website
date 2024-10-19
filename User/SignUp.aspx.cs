using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
public partial class User_Default : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry, fname;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into user_mstr values('" + txtname.Text + "','" + txtpass.Text + "','" + txtemail.Text + "','" + txtmobno.Text + "')";
        x.iud(qry);
        x.conclose();

       /* MailMessage mail = new MailMessage();
        string mailid = txtemail.Text;
        mail.To.Add(mailid);
        mail.From = new MailAddress("harshivbhatarkar03@gmil.com.com");
        mail.Subject = "Registration";
        string Body = "Thank You For Register Successfully to our Website";
        mail.Body = Body;
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();

        //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
        //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("harshivbhatarkar03@gmail.com", "#Toughsolar@123456");
        smtp.Port = 587;  //465
        smtp.EnableSsl = true;
        smtp.Send(mail);*/
      
        Response.Redirect("Signin.aspx");
    }
}