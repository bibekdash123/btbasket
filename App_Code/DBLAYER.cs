using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public class DBLAYER
{
	public DBLAYER()
	{
		
	}
    public static SqlConnection Conn()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["GROC"].ToString());
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        else
        {
            con.Close();
        }
        return con;
    }
    public static void ExecuteProcedure(SqlCommand ocmd)
    {
        ocmd.Connection = Conn();
        ocmd.CommandType = CommandType.StoredProcedure;
        ocmd.ExecuteNonQuery();
    }
    public static DataTable ExecuteGetDataTable(SqlCommand ocmd)
    {
        DataTable odt = new DataTable();
        ocmd.Connection = Conn();
        ocmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(ocmd);
        da.Fill(odt);
        return odt;
    }
    public static DataSet ExecuteGetDataSet(SqlCommand ocmd)
    {
        DataSet ods = new DataSet();
        ocmd.Connection = Conn();
        ocmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(ocmd);
        da.Fill(ods);
        return ods;
    }
    public static string ExecuteScalar(string QUERY)
    {
        string result = "";
        SqlCommand cmd = new SqlCommand(QUERY, Conn());
        result = (string)cmd.ExecuteScalar();
        return result;
    }
}