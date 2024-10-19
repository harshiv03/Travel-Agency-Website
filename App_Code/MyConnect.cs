using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for MyConnect
/// </summary>
public class MyConnect
{
    public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    public SqlCommand cmd = new SqlCommand();
    public SqlDataReader dr;
    public SqlDataAdapter dap = new SqlDataAdapter();
    public DataSet ds = new DataSet();
	public MyConnect()
	{
		
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
}