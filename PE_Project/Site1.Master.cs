using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        SqlConnection con = new SqlConnection(@"Data Source=XYX-WINLAPTOP\SQLEXPRESS01;Initial Catalog=bookwebsite;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCartRepeater();
            }
        }

        private decimal CalculateTotalSubtotal(DataTable dt)
        {
            decimal totalSubtotal = 0;

            foreach (DataRow row in dt.Rows)
            {
                decimal subtotal = Convert.ToDecimal(row["subtotal"]);
                totalSubtotal += subtotal;
            }

            return totalSubtotal;
        }

        private void BindCartRepeater()
        {
            DataTable dtCart = GetBooksInCart();

            //Update Total in the cart
            decimal total = CalculateTotalSubtotal(dtCart);

            if (Label1 != null)
            {
                if (total > 0)
                {
                    Label1.Text = total.ToString("C");
                }
                else
                {
                    Label1.Text = "$0.00";
                }
            }

            if (CartRepeater != null)
            {
                CartRepeater.DataSource = dtCart;
                CartRepeater.DataBind();
            }

        }

        private DataTable GetBooksInCart()
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT c.book_id, b.book_image, b.book_name, b.book_price, c.total_quantity, b.book_price * c.total_quantity AS subtotal FROM (SELECT book_id, SUM(quantity) as total_quantity FROM cart_table GROUP BY book_id) AS c INNER JOIN books_table as b ON c.book_id = b.book_id", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                }
            }
            catch (Exception ex)
            {
                // Handle the exception
                throw new Exception("Error fetching data from database", ex);
            }
            finally
            {
                con.Close();
            }
            return dt;
        }
        //CartRepeater_ItemCommand
        protected void CartRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                string bookId = e.CommandArgument.ToString();
                RemoveFromCart(bookId);
                BindCartRepeater();
            }
        }

        private void RemoveFromCart(string bookId)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM cart_table WHERE book_id = @book_id", con);
            cmd.Parameters.AddWithValue("@book_id", bookId);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Cart_Click(object sender, ImageClickEventArgs e)
        {
            string css_string = cartControl.Attributes["class"];
            string hide = "translate-x-full";
            string show = "translate-x-0";
            if (css_string.Contains(hide))
            {
                css_string = css_string.Replace(hide, show);
                cartControl.Attributes["class"] = css_string;
            }
        }

        protected void Close_and_Continue_Click(object sender, EventArgs e)
        {
            string css_string = cartControl.Attributes["class"];
            string hide = "translate-x-full";
            string show = "translate-x-0";
            if (css_string.Contains(show))
            {
                css_string = css_string.Replace(show, hide);
                cartControl.Attributes["class"] = css_string;
            }

        }
        
        protected void Checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Payment.aspx");
        }
    }
}