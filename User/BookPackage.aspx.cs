using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class User_Default2 : System.Web.UI.Page
{
    string uname, email,trid,tdid;
    MyClass x = new MyClass();
    string qry, fname;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                uname = Session["Uname"].ToString();
                email = Session["Emailid"].ToString();
                txtemail.Text = email;
                txtname.Text = uname;
                trid = Request.QueryString.Get("trid");
                ViewState["trid"] = Request.QueryString.Get("trid");
                tdid = Request.QueryString.Get("tdid");
                ViewState["tdid"] = Request.QueryString.Get("tdid");
                Txttype.Text = trid;
                txtplace.Text = tdid;
                txtmobno.Text = Session["Mobno"].ToString();

                x.conopen();
                qry = "select * from tourtype where ttid='" + trid + "'";

                x.dr = x.search(qry);
                if (x.dr.HasRows)
                {
                    x.dr.Read();
                    Txttype.Text = x.dr[1].ToString();
                }
                x.conclose();

                x.conopen();
                qry = "select * from tourdetails where tdid='" + tdid + "'";

                x.dr = x.search(qry);
                if (x.dr.HasRows)
                {
                    x.dr.Read();
                    txtplace.Text = x.dr["placename"].ToString();
                    txtprice.Text = x.dr["price"].ToString();
                    Session["price"] = x.dr["price"].ToString();
                }
                x.conclose();
            }
         }
        catch (Exception ex)
        {
            Response.Redirect("Signin.aspx");
        }
    }
    protected void ddladults_SelectedIndexChanged(object sender, EventArgs e)
    {
        tdid = Request.QueryString.Get("tdid");
          x.conopen();
                qry = "select * from tourdetails where tdid='" + tdid + "'";

                x.dr = x.search(qry);
                if (x.dr.HasRows)
                {
                    x.dr.Read();
                    txtplace.Text = x.dr["placename"].ToString();
                    txtprice.Text = x.dr["price"].ToString();
                }
                x.conclose();
        int amt;
        amt = Convert.ToInt32(txtprice.Text);
        int tot_person =Convert.ToInt32(ddladults.SelectedItem.Value);

        int per_person = amt / 2;

        if (tot_person > 2)
        {
            int new_amt = per_person * tot_person;
            amt = new_amt;
        }
        
        txtprice.Text = amt.ToString();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into book_tour values('" + ViewState["trid"].ToString() + "','" + ViewState["tdid"].ToString() + "','" + Session["Uid"].ToString() + "','" + txtname.Text + "','" + txtmobno.Text + "','" + txtemail.Text + "','" + txtadate.Text + "','" + txtddate.Text + "','" + txtprice.Text + "','" + DateTime.Now.Date + "','Pending')";
        x.iud(qry);
        x.conclose();

        //MailMessage mail = new MailMessage();
        //string mailid = txtemail.Text;
        //mail.To.Add(mailid);
        //mail.From = new MailAddress("infotech.kakshi@gmail.com");
        //mail.Subject = "About Your Booking";
        //string Body = "<html> User Name : " + uname + " <br/> Booking Name : " + txtname.Text + "<br/> <table bordercolor='black' borderwidth=3 borderstyle='solid'> <tr> <td> <b> Mobile No: </b></td> <td>" + txtmobno.Text + "</td> </tr><tr> <td> <b> Email Id: </b></td> <td>" + txtemail.Text + "</td> </tr><tr> <td> <b> Arrival Date: </b></td> <td>" + txtadate.Text + "</td> </tr><tr> <td> <b> Departure Date: </b></td> <td>" + txtddate.Text + "</td> </tr><tr> <td> <b> Price: </b></td> <td>" + txtprice.Text + "</td> </tr> <tr> <td> <b> Date Of Booking: </b></td> <td>" + DateTime.Now.Date  + "</td> </tr><tr> <td><b> Status </b></td> <td> Pending </td> </tr></html>";
        //mail.Body = Body;
        //mail.IsBodyHtml = true;

        //SmtpClient smtp = new SmtpClient();

        ////  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
        ////  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


        //smtp.Host = "smtp.gmail.com";
        //smtp.Credentials = new System.Net.NetworkCredential("infotech.kakshi@gmail.com", "bhushan611");
        //smtp.Port = 587;  //465
        //smtp.EnableSsl = true;
        //smtp.Send(mail);
        Response.Redirect("Payment.aspx");
    }
}