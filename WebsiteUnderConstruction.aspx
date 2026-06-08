<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebsiteUnderConstruction.aspx.cs" Inherits="HenryLunt.WebsiteUnderConstruction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebsiteUnderConstruction!</title>
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
              <asp:Image runat="server" ImageUrl="http://henrylunt.org/WebsiteUnderConstruction.jpg" />
              <p />
              <a href="https://www.freepik.com/vectors/website-construction">Website under construction vector created by pikisuperstar - www.freepik.com</a>
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
