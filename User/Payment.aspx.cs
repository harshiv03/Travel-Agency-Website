using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblprice.Text = "Price : " + Session["price"].ToString();
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewMyBooking.aspx");
    }
}