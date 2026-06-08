<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>

<script language="C#" runat="server">
  protected void Page_Load(object sender, EventArgs e)
  {
    MailMessage mail = new MailMessage();

    mail.From = new MailAddress("test@henrylunt.org");
    mail.To.Add("RobertWJones@tutanota.com");

    mail.Subject = "Test email sent from System.Net.Mail";
    mail.Body = "Mail test";
    mail.Headers.Add("Message-Id",
                      String.Format("<{0}@{1}>",
                      Guid.NewGuid().ToString(),
                      "domain.com"));

    SmtpClient smtp = new SmtpClient("sm08.internetmailserver.net");

    NetworkCredential Credentials = new NetworkCredential("test@henrylunt.org", "L5c]]H=s+HJ'*wDc");
    smtp.Credentials = Credentials;
    smtp.EnableSsl = false;
    smtp.Send(mail);
    lblMessage.Text = "Mail Sent";
  }
</script>
<html>
<body>
  <form runat="server">
    <asp:Label id="lblMessage" runat="server"></asp:Label>
  </form>
</body>
</html>