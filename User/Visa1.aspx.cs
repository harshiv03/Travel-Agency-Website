using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_Default3 : System.Web.UI.Page
{
    MyClass x = new MyClass();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            x.conopen();
            qry = "select * from visacountry";
            x.ds = new System.Data.DataSet();
            x.ds = x.fillgrid(qry);
            DropDownList1.DataSource = x.ds.Tables[0];
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "country";
            DropDownList1.DataValueField = "vcid";
            DropDownList1.DataBind();
            x.conclose();
            int vcid = Convert.ToInt32(DropDownList1.SelectedValue);
            x.conopen();
            qry = "select * from visacountry where vcid=" + vcid;
            x.cmd = new SqlCommand(qry, x.cn);
            dr = x.cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                country_flag.ImageUrl = "../Countryvisa_image/" + dr[2].ToString();
                lblcon.Text = dr[1].ToString() + " Visa";
                lbltime.Text = dr[3].ToString();
            }
            x.conclose();
            x.conopen();
            qry = "select * from visacountrydetails where vcid=" + vcid;
            x.ds = new System.Data.DataSet();
            x.ds = x.fillgrid(qry);
            ListView1.DataSource = x.ds.Tables[0];
            ListView1.DataBind();
            x.conclose();
        }
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int vcid = Convert.ToInt32(DropDownList1.SelectedValue);
        x.conopen();
        qry = "select * from visacountry where vcid=" + vcid;
        x.cmd = new SqlCommand(qry, x.cn);
        dr = x.cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            country_flag.ImageUrl = "../Countryvisa_image/" + dr[2].ToString();
            lblcon.Text = dr[1].ToString() + " Visa";
            lbltime.Text = dr[3].ToString();
        }
        x.conclose();
        x.conopen();
        qry = "select * from visacountrydetails where vcid=" + vcid;
        x.ds = new System.Data.DataSet();
        x.ds = x.fillgrid(qry);
        ListView1.DataSource = x.ds.Tables[0];
        ListView1.DataBind();
        x.conclose();
    }
}