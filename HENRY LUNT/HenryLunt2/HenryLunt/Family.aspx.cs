using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HenryLunt
{
    public partial class Family : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnEllenWhittaker_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/family/ellen.htm");
        }

        protected void btnMaryAnnWilson_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/family/mary_ann.htm");
        }

        protected void btnAnnCresswellGower_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/family/ann.htm");
        }

        protected void btnSarahAnnLunt_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/family/sarah_ann.htm");
        }
    }
}