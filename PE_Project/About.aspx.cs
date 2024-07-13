using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Project
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void contactSubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve form data
                string email = emailAddress.Text;
                string adviceContent = advice.Text;

                // Insert data into the database
                InsertAdvice(email, adviceContent);

                // Redirect or display success message
                Response.Redirect("~/Home.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                // Optionally display error message to user
            }
        }

        private void InsertAdvice(string email, string advice)
        {
            string connectionString = @"Data Source=LAPTOP-8NN9M5HK\SQLEXPRESS01;Initial Catalog=bookwebsite;Integrated Security=True;";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = @"INSERT INTO advice_table (email, advice) 
                             VALUES (@Email, @Advice)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Advice", advice);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("An error occurred while inserting advice: " + ex.Message, ex);
            }
        }
    }
}