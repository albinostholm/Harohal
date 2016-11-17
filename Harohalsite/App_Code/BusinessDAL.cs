using System.Data;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BusinessDAL
/// </summary>
public class BusinessDAL
{
    public BusinessDAL()
    {
    }

    string connStr = ConfigurationManager.ConnectionStrings["HarohalConnectionString"].ToString();

    public massor GetMassorInfo(string id)
    {
        massor ma = new massor();
        //Create a connection
        SqlConnnection conn = new SqlConnnection(connStr) ;

        //The procedure I want to call
        SqlCommand cmd = new SqlCommand("usp_GetAnstalldInfo", conn);

        //Command type I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            //Open connection
            conn.Open();

            //Insert Parameters
            cmd.Parameters.AddWithValue("@anstalldID", id);

            SqlDataReader reader;
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                ma.Name = reader["namn"].ToString();
                ma.Description = reader["beskrivning"].ToString();
                ma.Age = reader["alder"].ToString();
                ma.TreatsMen = reader["behandlarMan"].ToString();
                ma.TreatsWomen = reader["behandlarKvinna"].ToString();
            }

            return ma;
        }
        catch
        {
            throw;
        }
        finally
        {
            cmd.Dispose();
            conn.Clone();
            conn.Dispose();
        }
    }
}