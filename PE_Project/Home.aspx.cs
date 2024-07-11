using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Project
{
    public partial class Home : System.Web.UI.Page
    {
        private List<Book> novels;
        private List<Book> fictions;
        private List<Book> cartoons;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
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
}