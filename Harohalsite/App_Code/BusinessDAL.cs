using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System;

/// <summary>
/// Summary description for BusinessDAL
/// </summary>
public class BusinessDAL
{
    string connStr = ConfigurationManager.ConnectionStrings["HaroHalConnectionString"].ToString();

    public BusinessDAL()
    {
    }

    public void newOrder(order newO)
    {
        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_newOrder", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();
            cmd.Parameters.AddWithValue("@tjanstID", newO.tjanstID);
            cmd.Parameters.AddWithValue("@anstalldID", newO.anstalldID.ToUpper());         
            cmd.Parameters.AddWithValue("@personID", newO.personID);
            cmd.Parameters.AddWithValue("@startTid", newO.startTid);
            cmd.Parameters.AddWithValue("@slutTid", newO.slutTid);
            cmd.Parameters.AddWithValue("@orderStatusID", newO.orderStatusID);
            cmd.Parameters.AddWithValue("@CreatedBy", newO.anstalldID.ToUpper());
            cmd.ExecuteScalar();
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
    public DataTable getSchedule(DateTime start, string anstalldID)
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_anstalld_schema", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();
            cmd.Parameters.AddWithValue("@anstalldID", anstalldID);
            cmd.Parameters.AddWithValue("@startTid", start);
            cmd.Parameters.AddWithValue("@slutTid", start.AddDays(6));
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

    public artikel getArtikelInfo(int id)
    {
        DataTable dt = new DataTable();

        artikel art = new artikel();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_artikel", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();

            cmd.Parameters.AddWithValue("@artikelID", id);

            SqlDataReader reader = cmd.ExecuteReader();
            
            while (reader.Read())
            {
                art.rubrik = reader["rubrik"].ToString();

                art.beskrivning = reader["beskrivning"].ToString();
            }

            return art;
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

    public DataTable getAnnonsorInfo()
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_annonsorer", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
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

    public DataTable getTjanstInfo()
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_tjanster", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
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

    public DataTable getNyheterInfo()
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_nyheter", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
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