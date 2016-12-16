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

    public string LogIn(anvandare a)
    {
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_Login", conn);
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


    public string CreateUser(anvandare a)
    {
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_createUser", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@ForNamn", a.FirstName);
            cmd.Parameters.AddWithValue("@EfterNamn", a.LastName);
            cmd.Parameters.AddWithValue("@mail", a.Epost);
            cmd.Parameters.AddWithValue("@Personnr", a.ssn);
            cmd.Parameters.AddWithValue("@losenord", a.Password);
            cmd.Parameters.AddWithValue("@Nyhetsbrev", 0);
            cmd.Parameters.AddWithValue("@tarFaktura", 0);
            // Execute the procedure and return an integer
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

    public string RestorePassword(anvandare a)
    {
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_RestorePassword", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@mail", a.Epost);
            cmd.Parameters.AddWithValue("@losenord", a.Password);
            // Execute the procedure and return an integer
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

    public anvandare getUserData(string userID)
    {
        anvandare user = new anvandare();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_getUserInfo", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();

            cmd.Parameters.AddWithValue("@personid", userID);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                user.FirstName = reader["fornamn"].ToString();
                user.LastName = reader["efternamn"].ToString();
                user.ssn = reader["personnr"].ToString();
                user.Epost = reader["mail"].ToString();
            }

            return user;
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




    public int newOrder(order newO)
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
    public DataTable getSchedule(int veckoNR, string anstalldID)
    {
        DataTable dt = new DataTable();

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_anstalld_schema", conn);
        SqlCommand cmd2 = new SqlCommand("usp_orders", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        cmd2.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();
            cmd2.Parameters.AddWithValue("@anstalldID", anstalldID);
            cmd2.Parameters.AddWithValue("@vecka", veckoNR);
            cmd.Parameters.AddWithValue("@anstalldID", anstalldID);
            cmd.Parameters.AddWithValue("@vecka", veckoNR);
            dt.Load(cmd.ExecuteReader());
            dt.Load(cmd2.ExecuteReader());
            return dt;
        }
        catch
        {
            throw;
        }
        finally
        {
            cmd2.Dispose();
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
        }
        
    }
    public int getTjanstTid(int id)
    {
        int tid = 0;

        //Create a connection
        SqlConnection conn = new SqlConnection(connStr);

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_getTjanstTid", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            conn.Open();

            cmd.Parameters.AddWithValue("@tjanstID", id);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                tid = int.Parse(reader["tid"].ToString());
            }

            return tid;
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