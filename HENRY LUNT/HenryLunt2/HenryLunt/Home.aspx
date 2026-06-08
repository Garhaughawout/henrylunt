<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HenryLunt.Home" %>

<%@ Register Assembly="PdfViewer" Namespace="PdfViewer" TagPrefix="cc1" %>

<script type="text/javascript">
    function showOfficers() {
        alert('PRESIDENT: Natalie Haughawout\nVICE PRESIDENT: Aimee Clare\nSECRETARY: Caroline Clare\nTREASURER: Ashley Armbruster\nHISTORIAN: Jay Jones\nSOCIAL MEDIA: Sarah Haughawout\nCONTENT CREATOR: Adam Haughawout');
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Henry Lunt</title>
        <link href="Site.css" rel="stylesheet" type="text/css" /></head>
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

              <asp:Panel runat="server" ScrollBars="Vertical">

                  <%-- 
                  <asp:Image ID="intro" ImageUrl="http://HenryLunt.org/HenryLunt200thBirthdayObservance.jpg" runat="server" />  
                  --%>

                  <embed src="http://HenryLunt.org/events/events.pdf" type="application/pdf" style="width:100%; height:800px" />
                 

              </asp:Panel>
 
<%--              <div style="position: absolute; left: 0px; top: 0px; background-color: white; width: 802px; height: 1024px; padding: 5px; color: white; border: 10px white double; ">
        
                  <cc1:ShowPdf ID="EmbeddedViewer" runat="server" BorderStyle="None" BorderWidth="0px"
                               Height="570px" Style="z-index: 103; left: 0px; position: absolute; top: 0px"
                               Width="1580px" BackColor="Transparent" BorderColor="Transparent" ForeColor="Transparent" FilePath="http://dynamicprowebsites.com/PDFs/Treks.pdf" />

              </div>    --%>
                          
          </div>
          
          <%-- 
          <div id="divider" >
          
          </div>
          --%>
          
          <div id="footer">
              <asp:Label ID="lblFooter2" runat="server" Text="Henry Lunt Family Organization" style="position: absolute; left: 650px; top: 50px;" onmouseover="showOfficers()" ></asp:Label>
              <asp:Label ID="lblFooter1" runat="server" Text="Jay M. Jones, Web Page Content Manager" style="position: absolute; left: 625px; top: 65px;" ></asp:Label>
              <asp:Label ID="lblFooter" runat="server" Text="Copyright © 2024 Jay M. Jones - All Rights Reserved" style="position: absolute; left: 600px; top: 80px;" ></asp:Label>
          </div>     
            
    </form>
</body>
</html>
