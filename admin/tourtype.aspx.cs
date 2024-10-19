using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    string qry;
    MyClass x = new MyClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into tourtype values('"+txttourtype.Text+"')";
        x.iud(qry);
        Response.Redirect("tourtype.aspx");
        x.conclose();
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "delete from tourtype where tourtype = '"+txttourtype.Text+"'";
        x.iud(qry);
        Response.Redirect("tourtype.aspx");
        x.conclose();
    }
}