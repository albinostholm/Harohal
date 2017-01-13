//beckman, lite erik
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System;

/// <summary>
/// Summary description for ArtikelDAL
/// </summary>
public class AdminDAL
{
    string connStr = ConfigurationManager.ConnectionStrings["HaroHalConnectionString"].ToString();
    public AdminDAL()
    {
        
    }

    public string LogIn(cAnvandare a)
    {
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_ADMIN_Login", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@losenord", a.Password);
            cmd.Parameters.AddWithValue("@username", a.Epost);
            // Execute the procedure and return an Integer
            return cmd.ExecuteScalar().ToString();
        }
        catch
        {
            // If error
            throw;
        }
        finally
        {
            // Close and dispose all connections to the databse
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
        }
    }

    public DataTable getArtiklar()
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_artikel_alla", conn);

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

    public int updateArtikelInfo(cArtikel a)
    {
        //DataTable dt = new DataTable();

        cArtikel art = new cArtikel();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_ADMIN_edit_artikel", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();

            cmd.Parameters.AddWithValue("@artikelID", a.id);
            cmd.Parameters.AddWithValue("@rubrik", a.rubrik);
            cmd.Parameters.AddWithValue("@beskrivning", a.beskrivning);

            return cmd.ExecuteNonQuery();
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

    public int updateOrderInfo(cOrder newO)
    {
        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_ADMIN_edit_order", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();
            cmd.Parameters.AddWithValue("@orderID", newO.personID);
            cmd.Parameters.AddWithValue("@anstalldID", newO.anstalldID);
            cmd.Parameters.AddWithValue("@startTid", newO.startTid);
            cmd.Parameters.AddWithValue("@slutTid", newO.slutTid);
            cmd.Parameters.AddWithValue("@tjanstID", newO.tjanstID);

            return cmd.ExecuteNonQuery();
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

    public DataTable getMassorOrders(string anstalldID)
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_Massor_orders", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();

            cmd.Parameters.AddWithValue("@anstalldID", anstalldID);

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