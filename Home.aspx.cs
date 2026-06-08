using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HenryLunt
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFooter2.ToolTip = "PRESiDENT: Natalie Haughawout\r\nVICE PRESIDENT: Aimee Clare\r\nSECRETARY: Caroline Clare\r\nTREASIRER: Ashley Armbruster\r\nHISTORIAN: Jay Jones\r\nSOCIAL MEDIA: Sarah Haughawout\r\nCONTENT CREATOR: Adam Haughawout"; 
        }
    }
}