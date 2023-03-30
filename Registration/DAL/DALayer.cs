using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Registration.DAL
{
    public class DALayer
    {
        string con = string.Empty;

        public DALayer()
        {
            con = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();

        }
        public bool InsertUserRegistrationDetails(string Eid, string Ename,string Email)
        {
            bool result = false;

            SqlConnection conn = new SqlConnection(con);
    
            try
            {

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
             
                SqlCommand cmd1 = new SqlCommand("emp_sp", conn);

                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.Add("@Eid", SqlDbType.VarChar).Value = Eid;
                cmd1.Parameters.Add("@Ename", SqlDbType.VarChar).Value = Ename;
                cmd1.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
                int rows = cmd1.ExecuteNonQuery();
                if (rows > 0)
                {
                    result = true;
                 
                }
                else
                {
                    result = false;

             
                }
                return result;
            }
            catch (Exception ex)
            {
              
                throw ex;

            }
            finally
            {
                conn.Close();
              
            }
        }
    }

     
}