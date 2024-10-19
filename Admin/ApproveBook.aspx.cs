using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default2 : System.Web.UI.Page
{
    string qry;
    MyConnect x = new MyConnect();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        int bid = Convert.ToInt32(Request.QueryString["bid"].ToString());
            x.conopen();
            qry = "update book_tour set status='Approve' where bookid='"+ bid + "'";
            x.iud(qry);
        x.conclose();
        Response.Redirect("ViewBooking.aspx");
    }
}