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
        x.conopen();
        qry = "select * from user_mstr where Uid='" + Session["Uid"].ToString() + "'";

        x.dr = x.search(qry);
        if (x.dr.HasRows)
        {
            x.dr.Read();
            lblname.Text = x.dr[1].ToString();
            lblpass .Text = x.dr[2].ToString();
            lblEmail .Text = x.dr[3].ToString();
            lblmobno.Text = x.dr[4].ToString();
        }
       
        x.conclose();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditMyprofile.aspx");
    }
}