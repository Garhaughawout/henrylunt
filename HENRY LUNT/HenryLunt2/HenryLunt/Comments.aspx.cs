using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//<script language = "C#" runat="server">

namespace HenryLunt
{
    public partial class Comments : System.Web.UI.Page
    {
        //<script language = "C#" runat="server">

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ctrlGoogleReCaptcha.Validate())
            {
                //submit form success

                try
                {

                    /*                    MailMessage mail = new MailMessage();

                                        //mail.From = new MailAddress("postmaster@henrylunt.org");
                                        //mail.From = new MailAddress(txtEmailAddress.Text);
                                        mail.From = new MailAddress("RobertWJones@tutanota.com");

                                        //mail.To.Add("jayjones76@yahoo.com");
                                        mail.To.Add("postmaster@henrylunt.org");
                                        //mail.To.Add("robert.jones.programmer@gmail.com");

                                        mail.Subject = "Comment from interested party via HenryLunt.org!";

                                        mail.Body = "testing SMTP email from web hosting";
                                        //mail.Body = txtComments.Text;

                                        mail.Headers.Add("Message-Id",
                                          String.Format("<{0}@{1}>",
                                          Guid.NewGuid().ToString(),
                                          "henrylunt.org"));

                                        //SmtpClient smtp = new SmtpClient("localhost");
                                        SmtpClient smtp = new SmtpClient("sm08.internetmailserver.net");

                                        NetworkCredential nwcCredentials = new NetworkCredential("postmaster@henrylunt.org", "MickleyHall!1824");

                                        smtp.Credentials = nwcCredentials;

                                        smtp.EnableSsl = true;

                                        smtp.Send(mail);
                    */


                    /*                    MailMessage mail = new MailMessage();

                                        mail.From = new MailAddress("postmaster@henrylunt.org");
                                        mail.To.Add("postmaster@henrylunt.org");

                                        mail.Subject = "Test email sent from System.Net.Mail";
                                        mail.Body = "Mail test";
                                        mail.Headers.Add("Message-Id",
                                                          String.Format("<{0}@{1}>",
                                                          Guid.NewGuid().ToString(),
                                                          "henrylunt.org"));

                                        SmtpClient smtp = new SmtpClient("sm08.internetmailserver.net");

                                        NetworkCredential Credentials = new NetworkCredential("postmaster@henrylunt.org", "MickleyHall!1824");
                                        smtp.Credentials = Credentials;
                                        smtp.EnableSsl = false;
                                        smtp.Send(mail);
                    */


                    /*                    MailMessage mail = new MailMessage();

                                        mail.From = new MailAddress("txtEmailAddress.Text");
                                        mail.To.Add("robert.jones.programmer@gmail.com");

                                        mail.Subject = "Comment from interested party via HenryLunt.org!";
                                        mail.Body = txtComments.Text;
                                        mail.Headers.Add("Message-Id",
                                                          String.Format("<{0}@{1}>",
                                                          Guid.NewGuid().ToString(),
                                                          "domain.com"));

                                        SmtpClient smtp = new SmtpClient("sm08.internetmailserver.net");

                                        NetworkCredential Credentials = new NetworkCredential("test@henrylunt.org", "L5c]]H=s+HJ'*wDc");
                                        smtp.Credentials = Credentials;
                                        smtp.EnableSsl = true;
                                        smtp.Send(mail);
                    */


                    MailMessage mail = new MailMessage();

                    mail.From = new MailAddress(txtEmailAddress.Text);
                    mail.To.Add("jayjones76@yahoo.com");

                    mail.Subject = "Comment from user, " + txtEmailAddress.Text + ", of web site, henrylunt.org";
                    mail.Body = txtComments.Text;
                    mail.Headers.Add("Message-Id",
                                      String.Format("<{0}@{1}>",
                                      Guid.NewGuid().ToString(),
                                      "domain.com"));

                    SmtpClient smtp = new SmtpClient("sm08.internetmailserver.net");

                    NetworkCredential Credentials = new NetworkCredential("test@henrylunt.org", "L5c]]H=s+HJ'*wDc");
                    smtp.Credentials = Credentials;
                    smtp.EnableSsl = false;
                    smtp.Send(mail);




                    lblStatus.Text = "Success - comment submitted - thank you!";
                }
                catch (Exception ex)
                {
                    lblStatus.Text = "An error occurred when attempting to submit comment: " + ex.Message;
                }

            }
            else
            {
                //captcha challenge failed
                lblStatus.Text = "Captcha Failed!! Please correct and re-Submit!!";
            }

        }
    }
}