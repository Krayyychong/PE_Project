using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Project
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve form data
                string cardHolderName = CardHolderName.Text;
                string phone = Phone.Text;
                string email = Email.Text;
                string countryNo = phoneHeader.SelectedValue; // Assuming this corresponds to 'country_no'
                string selectedCountry = country.SelectedValue;
                string bankName = DropDownList2.SelectedValue; // Assuming this corresponds to 'bank_name'
                string cardNo = CardNo.Text;
                string expireDate = ExpireDate.Text; ; // Assuming this corresponds to 'card_expiry_date'
                string cvv = CVV.Text; // Assuming this corresponds to 'card_cvv'
                string city = City.Text;
                string postalCode = PostalCode.Text;
                string street = StreetAddress.Text;
                string state = Region.Text; // Assuming this corresponds to 'state'

                // Insert data into the database
                InsertPaymentInfo(cardHolderName, phone, email, countryNo, selectedCountry, bankName, cardNo, expireDate, cvv, city, postalCode, street, state);
                EmptyShoppingCart();

                Response.Redirect("~/PaymentSuccess.aspx");
                
            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void InsertPaymentInfo(string cardHolderName, string phone, string email, string countryNo, string selectedCountry, string bankName, string cardNo, string expireDate, string cvv, string city, string postalCode, string street, string state)
        {
            string connectionString = @"Data Source=LAPTOP-8NN9M5HK\SQLEXPRESS01;Initial Catalog=bookwebsite;Integrated Security=True;";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = @"INSERT INTO payment_table  
                                    (cardholder_name, phone_no, country_no, email, country, bank_name, card_no, card_expiry_date, card_cvv, city, postal_code, street, state) 
                                    VALUES 
                                    (@CardHolderName, @Phone, @CountryNo, @Email, @Country, @BankName, @CardNo, @ExpireDate, @CVV, @City, @PostalCode, @Street, @State)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@CardHolderName", cardHolderName);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@CountryNo", countryNo);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Country", selectedCountry);
                        cmd.Parameters.AddWithValue("@BankName", bankName);
                        cmd.Parameters.AddWithValue("@CardNo", cardNo);
                        cmd.Parameters.AddWithValue("@ExpireDate", expireDate);
                        cmd.Parameters.AddWithValue("@CVV", cvv);
                        cmd.Parameters.AddWithValue("@City", city);
                        cmd.Parameters.AddWithValue("@PostalCode", postalCode);
                        cmd.Parameters.AddWithValue("@Street", street);
                        cmd.Parameters.AddWithValue("@State", state);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("An error occurred while inserting payment information: " + ex.Message, ex);
            }
        }

        private void EmptyShoppingCart()
        {
            string connectionString = @"Data Source=LAPTOP-8NN9M5HK\SQLEXPRESS01;Initial Catalog=bookwebsite;Integrated Security=True;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM cart_table", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}