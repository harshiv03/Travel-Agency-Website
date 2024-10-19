using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MyClass
/// </summary>
public class MyClass
{
    public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    public SqlCommand cmd = new SqlCommand();
    public SqlDataReader dr;
    public SqlDataAdapter dap = new SqlDataAdapter();
    public DataSet ds = new DataSet();

	public MyClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void conopen()
    {
        cn.Open();
    }
    public void conclose()
    {
        cn.Close();
    }
    public void iud(string qry)
    {
        cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
    }
    public SqlDataReader search(string qry)
    {
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        return dr;
    }
    public DataSet fillgrid(string qry)
    {
        dap = new SqlDataAdapter(qry, cn);
        dap.Fill(ds);
        return ds;
    }

    public DataSet Gridview(string qry)
    {
        dap = new SqlDataAdapter(qry, cn);
        dap.Fill(ds);
        return ds;
    }

}