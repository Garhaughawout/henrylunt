using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HenryLunt
{
    public partial class Journal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPortionJournal1852_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/journal/Journal_1852.pdf");
        }

        protected void btnPortionJournal1853_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/journal/Journal_1853.pdf");
        }

        protected void btnMissionToEnglandAndReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/journal/Mission_England_1854_1857.pdf");
        }

        protected void btnShortEntriesFor1858And1859_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/journal/Short_Entries_1858_1859.pdf");
        }

    }

}