using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default3 : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry, fname;
    protected void Page_Load(object sender, EventArgs e)
    {
        fname = Session["Uname"].ToString();
        txtname.Text = fname;

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into reviews values('" + Session["Uid"].ToString() + "','" + txttitle.Text + "','" + txtrating.Text + "','" + txtdesc.Text + "','" + txtcountry.Text + "')";
        x.iud(qry);
        x.conclose();
        Label1.Text = "Thanks For Your Feedback";
    }
}