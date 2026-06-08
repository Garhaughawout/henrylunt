<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="HenryLunt.Comments" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Comments</title>
        <link href="Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    
          <%-- 
          <div id="header">
          
              <asp:Label ID="lblSiteTitle" runat="server" Text="Henry Lunt"></asp:Label>
              
              <asp:Label ID="lblOpportunityFulfillment" runat="server" Text="Stalwart Pioneer" style="position:absolute; font-size:medium;  font-weight:bolder; top:85px; left:608px;"></asp:Label>

          </div>
          --%>

          <div id="navigation">

           <div style="height: 1px"></div>


            <ul>

              <li><a href="http://henrylunt.org/biography/start.pdf">Biography</a></li>
              <li><a href="http://henrylunt.org/Journal.aspx">Journal</a></li>
              <li><a href="http://henrylunt.org/Stories.aspx">Stories</a></li>
              <li><a href="http://henrylunt.org/family/Henry_Lunt.pdf">Family</a></li>
              <li><a href="https://www.google.com/maps/place/Mickley+Hall+Ln,+Nantwich,+UK/@53.0253265,-3.6695147,8z/data=!4m5!3m4!1s0x487af35199e2943b:0xf074fc58786c168b!8m2!3d53.0253233!4d-2.5489093">England</a></li>
              <li><a href="https://www.google.com/maps/place/Cedar+City,+UT/@37.6849712,-113.1370693,13z/data=!3m1!4b1!4m6!3m5!1s0x80b5617fe05ec2d1:0xef14cae28073d1e9!8m2!3d37.6774769!4d-113.0618931!16zL20vMDEwZjZx">Cedar City</a></li>
              <li><a href="https://www.google.com/maps/place/Col+Pacheco,+Chihuahua,+Mexico/@30.0868228,-109.4658929,8z/data=!4m5!3m4!1s0x86c4b99e1ca9ead3:0xde7fa5be1b6c18f0!8m2!3d30.086805!4d-108.3452875">Mexico</a></li>
              <li><a href="http://henrylunt.org/TimeLine.aspx">Timeline</a></li>
              <li><a href="http://henrylunt.org/events/events.pdf">Events</a></li>
              <li><a href="http://henrylunt.org/photos/photos.pdf">Photos</a></li>
              <li><a href="http://henrylunt.org/about/about.pdf">About</a></li>
              <li><a href="http://henrylunt.org/Contact.aspx">Contact</a></li>

            </ul>
            
          </div>
          
          <div id="content_Xlarge"  >

              <asp:Label ID="lblHeader" runat="server" Text="Questions or comments regarding anything related to this site are welcome!" Font-Size="X-Large" style="position: absolute; left: 0px; top: 30px;" ></asp:Label>

              <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address:" Font-Size="X-Large" style="position: absolute; left: 0px; top: 100px;" ></asp:Label>
              <asp:TextBox ID="txtEmailAddress" runat="server" style="position: absolute; left: 170px; top: 105px;" width="300" TextMode="SingleLine"></asp:TextBox>

              <asp:Label ID="lblComments" runat="server" Text="Comments:" Font-Size="X-Large" style="position: absolute; left: 0px; top: 170px;" ></asp:Label>
              <asp:TextBox ID="txtComments" runat="server" style="position: absolute; left: 170px; top: 175px;" Width="1405" Height="275" MaxLength="4000" Wrap="true" TextMode="MultiLine" ></asp:TextBox>

              <cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" PublicKey="6LfLb8QfAAAAAEZp4x4BYEbQwMx5UWKRSmXYTpir" PrivateKey="6LfLb8QfAAAAAD2DxZUMzBBBI07oPfXBf1SncQl7" style="position: absolute; left: 0px; top: 490px;"  />
              <asp:Button ID="btnSubmit" runat="server" Text="Submit"  style="position: absolute; left: 408px; top: 515px;" OnClick="btnSubmit_Click" />
              <asp:Label ID="lblStatus" runat="server" Text="<-- Click, I'm not a robot, check box to activate human-interactive quiz" Font-Size="X-Large" style="position: absolute; left: 550px; top: 510px;" ></asp:Label>

          </div>
          
          <%-- 
          <div id="divider" >
          
          </div>
          --%>
          
          <div id="footer">
              <asp:Label ID="lblFooter" runat="server" Text="Copyright © 2024 Jay M. Jones - All Rights Reserved" style="position: absolute; left: 400px; top: 50px;" ></asp:Label>
          </div>     
            
    </form>
</body>
</html>
