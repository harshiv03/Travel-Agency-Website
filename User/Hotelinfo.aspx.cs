using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default2 : System.Web.UI.Page
{
    string uname, email;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            uname = Session["Uname"].ToString();
            email = Session["Emailid"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("tourdetails.aspx?trid=" + Request.QueryString.Get("trid"));
        }
    }
}