<<<<<<< HEAD
﻿using System.Data;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BusinessDAL
/// </summary>
public class BusinessDAL
{
    string connStr = ConfigurationManager.ConnectionStrings["HaroHalConnectionString"].ToString();

    public BusinessDAL()
    {
    }

    

    public DataTable getMassorInfo()
    {
        DataTable dt = new DataTable();
        
        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_anstallda", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            //cmd.Parameters.AddWithValue("@", 1);

            conn.Open();
            dt.Load(cmd.ExecuteReader());

            return dt;
        }
        catch
        {
            throw;
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
        }
    }
}