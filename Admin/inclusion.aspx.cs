using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btninsert_Click1(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into inclusion values('"+DropDownList1.SelectedItem.Value+"','"+txtinclusion.Text+"')";
        x.iud(qry);
        Response.Redirect("inclusion.aspx");
        x.conclose();
    }
}