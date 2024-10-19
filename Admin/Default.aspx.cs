using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Default : System.Web.UI.Page
{
    string qry;
    MyConnect x = new MyConnect();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "select * from admin_mstr where aname='"+ txtuname.Text + "' and password='" + txtpwd.Text + "'";
        x.dr = x.search(qry);
        if (x.dr.HasRows)
        {
            x.dr.Read();
            Session["Aname"] = x.dr[1].ToString(); 
            Response.Redirect("Home.aspx");
        }
        else
        {
            Label1.Text = "Record Not Found";
        }
        x.conclose();
    }
}