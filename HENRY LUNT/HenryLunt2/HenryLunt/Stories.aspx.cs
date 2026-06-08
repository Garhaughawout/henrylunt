using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HenryLunt
{
    public partial class Stories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChristmas1852_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/Christmas1852.pdf");
        }

        protected void btnColoringBookFamineInMexico_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/FamineInMexicoColoringBook.pdf");
        }

        protected void btnKanesVisitToTheLunts_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/KaneVisitToLunts.pdf");
        }

        protected void btnRulesInTheHenryLuntHousehold_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/Rules-HenryLuntHousehold.pdf");
        }

        protected void btnSettlingOfCedarCity_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/SettlingOfCedarCity.pdf");
        }

        protected void btnSarahAnnLunt_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/SarahAnnLunt.pdf");
        }

        protected void btnCedarMountainHideout_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://HenryLunt.org/stories/Cedar_Mountain_Hideout.pdf");
        }
    }

}