using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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