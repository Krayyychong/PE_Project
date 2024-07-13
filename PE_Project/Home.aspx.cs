/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace PE_Project
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8NN9M5HK\SQLEXPRESS01;Initial Catalog=bookwebsite;Integrated Security=True;Trust Server Certificate=True");
        private List<Book> novels;
        private List<Book> fictions;
        private List<Book> cartoons;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books_table";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource() = dt;
            d1.DataBind();
            if (!IsPostBack)
            {
                BindRepeater();
            }

            con.Close();
        }

        private void BindRepeater()
        {
            novels = new List<Book>
            {
                new Book {BookId = 1, BookName="Harry Potter", Description="Something", Price=90, ImagePath="/Image/book_image/a_single_man_novel.png"},
                new Book {BookId = 2, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 3, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 4, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 5, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"}
            };

            fictions = new List<Book>
            {
                new Book {BookId = 1, BookName="Harry Potter", Description="Something", Price=90, ImagePath="/Image/book_image/a_single_man_novel.png"},
                new Book {BookId = 2, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 3, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 4, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 5, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"}
            };

            cartoons = new List<Book>
            {
                new Book {BookId = 1, BookName="Harry Potter", Description="Something", Price=90, ImagePath="/Image/book_image/a_single_man_novel.png"},
                new Book {BookId = 2, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 3, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 4, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"},
                new Book {BookId = 5, BookName="Kite Runner", Description="Something2", Price=60, ImagePath="/Image/book_image/kite_runner_novel.png"}
            };

            novelRepeater.DataSource = novels;
            FictionRepeater.DataSource = fictions;
            CartoonRepeater.DataSource = cartoons;

            FictionRepeater.DataBind();
            novelRepeater.DataBind();
            CartoonRepeater.DataBind();
        }

        protected void novelRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // get current data item
                Book book = (Book)e.Item.DataItem;

                // find items and change its label
                Button label = (Button)e.Item.FindControl("NovelSubmitBtn");
                label.ID = $"NovelSubmitBtn{book.BookId}";
            }
        }

        protected void fictionRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // get current data item
                Book book = (Book)e.Item.DataItem;

                // find items and change its label
                Button label = (Button)e.Item.FindControl("FictionSubmitBtn");
                label.ID = $"FictionSubmitBtn{book.BookId}";
            }
        }

        protected void cartoonRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // get current data item
                Book book = (Book)e.Item.DataItem;

                // find items and change its label
                Button label = (Button)e.Item.FindControl("CartoonSubmitBtn");
                label.ID = $"CartoonSubmitBtn{book.BookId}";
            }
        }
    }
}*/

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Project
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8NN9M5HK\SQLEXPRESS01;Initial Catalog=bookwebsite;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        private void BindRepeater()
        {
            DataTable dtNovels = GetBooksByCategory("Novel");
            DataTable dtFictions = GetBooksByCategory("Fiction");
            DataTable dtCartoons = GetBooksByCategory("Cartoon");

            novelRepeater.DataSource = dtNovels;
            novelRepeater.DataBind();

            FictionRepeater.DataSource = dtFictions;
            FictionRepeater.DataBind();

            CartoonRepeater.DataSource = dtCartoons;
            CartoonRepeater.DataBind();
        }

        private DataTable GetBooksByCategory(string category)
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM books_table WHERE Category = @Category", con))
                {
                    cmd.Parameters.AddWithValue("@Category", category);
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

        protected void novelRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView rowView = (DataRowView)e.Item.DataItem;
                string bookId = rowView["book_id"].ToString();
                Button label = (Button)e.Item.FindControl("NovelSubmitBtn");
                label.ID = $"NovelSubmitBtn{bookId}";
            }
        }

        protected void fictionRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView rowView = (DataRowView)e.Item.DataItem;
                string bookId = rowView["book_id"].ToString();
                Button label = (Button)e.Item.FindControl("FictionSubmitBtn");
                label.ID = $"FictionSubmitBtn{bookId}";
            }
        }

        protected void cartoonRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView rowView = (DataRowView)e.Item.DataItem;
                string bookId = rowView["book_id"].ToString();
                Button label = (Button)e.Item.FindControl("CartoonSubmitBtn");
                label.ID = $"CartoonSubmitBtn{bookId}";
            }
        }

        protected void FictionRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                String bookId = e.CommandArgument.ToString();
                AddToCart(bookId);
            }
        }

        protected void novelRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                String bookId = e.CommandArgument.ToString();
                AddToCart(bookId);
            }
        }

        protected void CartoonRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                String bookId = e.CommandArgument.ToString();
                AddToCart(bookId);
            }
        }


        private void AddToCart(String bookId)
        {
            try
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("INSERT INTO cart_table (book_id, quantity) VALUES (@book_id, @quantity)", con))
                {    
                    cmd.Parameters.AddWithValue("@book_id", bookId);
                    cmd.Parameters.AddWithValue("@quantity", 1); // Default quantity to 1
                    cmd.ExecuteNonQuery();
                    Console.WriteLine("SUCCESS");
                }
            }
            catch (Exception ex)
            {
                // Handle the exception
                throw new Exception("Error adding to cart", ex);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
