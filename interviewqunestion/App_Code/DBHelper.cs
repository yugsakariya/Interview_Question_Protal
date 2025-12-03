using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public static class DBHelper
{
    private static readonly string _conStr =
        ConfigurationManager.ConnectionStrings["IQPortalConn"].ConnectionString;

    public static DataTable ExecuteDataTable(string query, SqlParameter[] parameters = null)
    {
        using (SqlConnection con = new SqlConnection(_conStr))
        using (SqlCommand cmd = new SqlCommand(query, con))
        {
            if (parameters != null)
                cmd.Parameters.AddRange(parameters);

            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
    }

    public static int ExecuteNonQuery(string query, SqlParameter[] parameters = null)
    {
        using (SqlConnection con = new SqlConnection(_conStr))
        using (SqlCommand cmd = new SqlCommand(query, con))
        {
            if (parameters != null)
                cmd.Parameters.AddRange(parameters);

            con.Open();
            return cmd.ExecuteNonQuery();
        }
    }

    public static object ExecuteScalar(string query, SqlParameter[] parameters = null)
    {
        using (SqlConnection con = new SqlConnection(_conStr))
        using (SqlCommand cmd = new SqlCommand(query, con))
        {
            if (parameters != null)
                cmd.Parameters.AddRange(parameters);

            con.Open();
            return cmd.ExecuteScalar();
        }
    }
}
