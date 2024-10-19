using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        qry = "select * from user_mstr where Uemailid='" + txtemail.Text + "' and Upass='" + txtpass.Text + "'";

        x.dr = x.search(qry);
        if (x.dr.HasRows)
        {
            x.dr.Read();
            Session["Uid"] = x.dr[0].ToString();
            Session["Uname"] = x.dr[1].ToString();
            Session["Emailid"] = txtemail.Text;
            Session["Mobno"] = x.dr[4].ToString();
            Response.Redirect("Default2.aspx");
        }
        else
        {
            Label1.Text = "Record Not Found";
        }
        x.conclose();
    }
}