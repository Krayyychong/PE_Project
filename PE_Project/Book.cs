using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PE_Project
{
    public class Book
    {
        public int BookId { get; set; }

        public string BookName { get; set; }

        public string Description { get; set; } 

        public float Price { get; set; }

        public string ImagePath { get; set; }
    }
}