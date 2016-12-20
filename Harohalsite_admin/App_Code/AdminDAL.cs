//Erik Sandberg
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
}