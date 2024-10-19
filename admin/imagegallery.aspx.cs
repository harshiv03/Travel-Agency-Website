using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry,fname;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            fname = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Image_Gallery/")+fname);
            x.conopen();
            qry = "insert into imagegallery values('"+DropDownList1.SelectedItem.Value+"','"+fname+"')";
            x.iud(qry);
            Response.Redirect("imagegallery.aspx");
            x.conclose();
        }
    }
}