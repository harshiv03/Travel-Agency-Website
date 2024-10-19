using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry, fname;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            fname = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Tour_Image/")+fname);
            x.conopen();
            qry = "insert into tourdetails values('"+DropDownList1.SelectedItem.Value+"','"+txtplacename.Text+"','"+fname+"','"+txtdays.Text+"','"+txtdesc.Text+"','" + txtprice.Text +"')";
            x.iud(qry);
            Response.Redirect("tourdetails.aspx");
            x.conclose();
        }

    }
}