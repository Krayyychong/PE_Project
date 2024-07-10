using System;
using System.Collections.Generic;
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
            Response.Redirect("~/PaymentSuccess.aspx");
        }
    }
}