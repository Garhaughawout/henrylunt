<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeLine.aspx.cs" Inherits="HenryLunt.TimeLine" %>

<%@ Register Assembly="PdfViewer" Namespace="PdfViewer" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Henry Lunt</title>
        <link href="Site.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        

*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font: normal 16px/1.5 "Helvetica Neue", sans-serif;
  background: #456990;
  color: #fff;
  overflow-x: hidden;
  padding-bottom: 50px;
}


/* INTRO SECTION
–––––––––––––––––––––––––––––––––––––––––––––––––– */

.intro {
  background: #3B384E;
  padding: 100px 0;
}

.container {
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
}

h1 {
  font-size: 2.5rem;
}


/* TIMELINE
–––––––––––––––––––––––––––––––––––––––––––––––––– */

.timeline ul {
  background: #456990;
  padding: 50px 0;
}

.timeline ul li {
  list-style-type: none;
  position: relative;
  width: 6px;
  margin: 0 auto;
  padding-top: 50px;
  background: #fff;
}

.timeline ul li::after {
  content: "";
  position: absolute;
  left: 50%;
  bottom: 0;
  transform: translateX(-50%);
  width: 30px;
  height: 30px;
  border-radius: 50%;
  background: inherit;
  z-index: 1;
}

.timeline ul li div {
  position: relative;
  bottom: 0;
  width: 400px;
  padding: 15px;
  background: #3B384E;
}

.timeline ul li div::before {
  content: "";
  position: absolute;
  bottom: 7px;
  width: 0;
  height: 0;
  border-style: solid;
}

.timeline ul li:nth-child(odd) div {
  left: 45px;
}

.timeline ul li:nth-child(odd) div::before {
  left: -15px;
  border-width: 8px 16px 8px 0;
  border-color: transparent #3B384E transparent transparent;
}

.timeline ul li:nth-child(even) div {
  left: -439px;
}

.timeline ul li:nth-child(even) div::before {
  right: -15px;
  border-width: 8px 0 8px 16px;
  border-color: transparent transparent transparent #3B384E;
}

time {
  display: block;
  font-size: 1.2rem;
  font-weight: bold;
  margin-bottom: 8px;
}


/* EFFECTS
–––––––––––––––––––––––––––––––––––––––––––––––––– */

.timeline ul li::after {
  transition: background 0.5s ease-in-out;
}

.timeline ul li.in-view::after {
  background: #3B384E;
}

.timeline ul li div {
  visibility: hidden;
  opacity: 0;
  transition: all 0.5s ease-in-out;
}

.timeline ul li:nth-child(odd) div {
  transform: translate3d(200px, 0, 0);
}

.timeline ul li:nth-child(even) div {
  transform: translate3d(-200px, 0, 0);
}

.timeline ul li.in-view div {
  transform: none;
  visibility: visible;
  opacity: 1;
}


/* GENERAL MEDIA QUERIES
–––––––––––––––––––––––––––––––––––––––––––––––––– */

@media screen and (max-width: 900px) {
  .timeline ul li div {
    width: 250px;
  }
  .timeline ul li:nth-child(even) div {
    left: -289px;
    /*250+45-6*/
  }
}

@media screen and (max-width: 600px) {
  .timeline ul li {
    margin-left: 20px;
  }
  .timeline ul li div {
    width: calc(100vw - 91px);
  }
  .timeline ul li:nth-child(even) div {
    left: 45px;
  }
  .timeline ul li:nth-child(even) div::before {
    left: -15px;
    border-width: 8px 16px 8px 0;
    border-color: transparent #3B384E transparent transparent;
  }
}


/* EXTRA/CLIP PATH STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */
.timeline-clippy ul li::after {
  width: 40px;
  height: 40px;
  border-radius: 0;
}

.timeline-rhombus ul li::after {
  clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
}

.timeline-rhombus ul li div::before {
  bottom: 12px;
}

.timeline-star ul li::after {
  clip-path: polygon(
    50% 0%,
    61% 35%,
    98% 35%,
    68% 57%,
    79% 91%,
    50% 70%,
    21% 91%,
    32% 57%,
    2% 35%,
    39% 35%
  );
}

.timeline-heptagon ul li::after {
  clip-path: polygon(
    50% 0%,
    90% 20%,
    100% 60%,
    75% 100%,
    25% 100%,
    0% 60%,
    10% 20%
  );
}

.timeline-infinite ul li::after {
  animation: scaleAnimation 2s infinite;
}

@keyframes scaleAnimation {
  0% {
    transform: translateX(-50%) scale(1);
  }
  50% {
    transform: translateX(-50%) scale(1.25);
  }
  100% {
    transform: translateX(-50%) scale(1);
  }
}


/* FOOTER STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */
.page-footer {
  position: fixed;
  right: 0;
  bottom: 20px;
  display: flex;
  align-items: center;
  padding: 5px;
  color: black;
  background: rgba(255, 255, 255, 0.65);
}

        .page-footer a {
          display: flex;
          margin-left: 4px;
        }


        .auto-style1 {
            width: 480px;
            height: 723px;
        }
        .auto-style2 {
            width: 474px;
            height: 737px;
        }
    </style>
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

<%--               <asp:Panel runat="server" ScrollBars="Vertical">        --%>
<%--                   <asp:Panel ID="Panel1" runat="server" Height="800px" ScrollBars="Vertical">   --%>
<%--                      <img alt="" class="auto-style1" src="TimeLine/1.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:10px; left:20px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/2.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:734px; left:20px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/3.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:1473px; left:30px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/4.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:2212px; left:30px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/5.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:2951px; left:29px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/6.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:3690px; left:31px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/7.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:4428px; left:35px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/8.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:5167px; left:33px;"/>
                      <img alt="" class="auto-style2" src="TimeLine/9.JPG" style="position:absolute; font-size:medium;  font-weight:bolder; top:5905px; left:50px;"/>     --%>

            <section class="intro">
                <div class="container">
                <h1>Timeline of Henry Lunt's Life &darr;</h1>
                </div>
            </section>

              <section class="timeline">
                  <ul>
                    <li>
                      <div>
                        <time>1824:</time> Birth: 20 July 1824, Cheshire, England <a href="https://www.google.com/maps/place/Cheshire,+UK/@53.2141143,-2.83171,10z/data=!3m1!4b1!4m5!3m4!1s0x487af98b138a979d:0x35855d8a114a8ecb!8m2!3d53.2326344!4d-2.6103158" style="color: #8ebf42">map</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1824:</time> Residence: 1 August 1824, Wrenbury, Cheshire, England, United Kingdom <a href="https://www.google.com/maps/place/Wrenbury,+Nantwich,+UK/@53.0256571,-2.6108531,16z/data=!3m1!4b1!4m6!3m5!1s0x487af2cfac5c1ecd:0xcecbd694c41e57ce!8m2!3d53.024186!4d-2.609324!16zL20vMGQ2Yzlm" style="color: #8ebf42">map</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1824:</time> Christening: 1 August 1824, Wrenbury, Cheshire, England
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1836:</time> Death of Parent: 19 September 1836, Badenhall, Staffordshire, England, Randle Lunt 1766-1836, L5FW-VJZ  
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1849:</time> Baptism: 06 Oct 1849
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1850:</time> Overland Emigration Group - Milo Andrus Company, 3 June 1850
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1850:</time> Immigration: 30 August 1850, Utah, United States  <a href="https://www.google.com/maps/place/Utah/@39.4824519,-113.7899883,7z/data=!3m1!4b1!4m6!3m5!1s0x874c6bc78f13f9cd:0xbddf4aa56cd7463f!8m2!3d39.3209801!4d-111.0937311!16zL20vMDdzcnc" style="color: #8ebf42">map</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1852:</time> Marriage: 25 March 1852, Parowan, Iron, Utah, United States, Ellen Whittaker, 1830-1903, KWVS-8ZH, <a href="http://henrylunt.org/EllenWhitaker.jpg" style="color: #8ebf42">info</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1853 (approx):</time> Birth of Child: About 1853, Cedar City, Iron, Utah, United States, Ammon Lunt, 1853-1870, 27HS-JJL
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1856 (approx):</time> Birth of Child: About 1856, Cedar Citry, Iron, Utah, United States, Ann Lunt, 1856-1865, 979S-NBP
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1857:</time> Immigration: June 1857, United States
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1857:</time> Immigration: 26 September 1857, Utah, United States
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1857:</time> Marriage: 7 October 1857, Salt Lake City, Salt Lake, Utah, United States, Mary Ann Wilson, 1834-1910, KWNN-LF8 <a href="http://henrylunt.org/MaryAnnWilson.jpg" style="color: #8ebf42">info</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1858:</time> Birth of Child: 12 November 1858, Cedar City, Iron, Utah Territory, United States, Martha Henrietta Lunt, 1858-1932, KWZX-Q88 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1861:</time> Birth of Child: 7 February 1861, Cedar City, Iron, Utah Territory, United States, Ellen Eva Wilson Lunt, 1861-1923, KWC1-MFT 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1862:</time> Death of Parent: 7 March 1862, Wybunbury, Cheshire, England, Anne Owen, 1781-1862, LZG9-14F
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1863:</time> Birth of Child: 25 January 1963, Cedar City, Iron, Utah Territory, United States, Henry Whitaker Wilson Lunt, 1863-1926, KWCF-VD1 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1863:</time> Marriage: 11 April 1863, Salt Lake City, Salt Lake, Utah, United States, Ann Cresswell Gower, 1843-1914, KWNF-GXG <a href="http://henrylunt.org/AnnCresswellGower.jpg" style="color: #8ebf42">info</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1864:</time> Birth of Child: 3 March 1864, Cedar City, Iron, Utah Territory, United States, Jane Gower Lunt, 1864-1952, KWJL-6TM 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1864:</time> Birth of Child: 8 November 1864, Cedar City, Iron, Utah Territory, United States, Randle Wilson Lunt, 1864-1951, KWZM-GHG 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1865 (approx):</time> Death of Child: About 1865, Cedar City, Iron, Utah Territory, United States, Ann Lunt, 1856-1865,  
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1863:</time> Birth of Child: 25 January 1963, Cedar City, Iron, Utah Territory, United States, Henry Whitaker Wilson Lunt, 1863-1926, KWCF-VD1 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1866:</time> Birth of Child: 20 January 1866, Cedar City, Iron, Utah Territory, United States, Jemima Gower Lunt, 1866-1945, KWVM-1YH 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1863:</time> Birth of Child: 25 January 1963, Cedar City, Iron, Utah Territory, United States, Henry Whitaker Wilson Lunt, 1863-1926, KWCF-VD1 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1867:</time> Birth of Child: 18 July 1867, Cedar City, Iron, Utah Territory, United States, William Wilson Lunt, 1867-1930, KWC2-682 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1868:</time> Birth of Child: 3 March 1868, Cedar City, Iron, Utah Territory, United States, Roselia Gower Lunt, 1868-1928, KWC7-3JX 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1870:</time> Death of Child: 4 Jan 1870, Cedar City, Iron, Utah Territory, United States, Ammon Lunt, 1853-1870, 27HS-JJL 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1870:</time> Birth of Child: 20 January 1870, Cedar City, Iron, Utah Territory, United States, Florence Wilson Lunt, 1870-1909, KWCV-GRB 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1870:</time> Birth of Child: 6 October 1870, Cedar City, Iron, Utah Territory, United States, Oscar Gower Lunt, 1870-1959, KWCZ-NDT 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1872:</time> Birth of Child: 7 November 1872, Cedar City, Iron, Utah Territory, United States, Richard Henry Lunt, 1872-1872, KWV9-MMJ 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1872:</time> Death of Child: 7 November 1872, Cedar City, Iron, Utah Territory, United States, Richard Henry Lunt, 1872-1872, KWV9-MMJ 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1873:</time> Birth of Child: 10 August 1873, Cedar City, Iron, Utah Territory, United States, Violet Wilson Lunt, 1873-1967, KWJH-4NF 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1874:</time> Birth of Child: 18 May 1874, Cedar City, Iron, Utah Territory, United States, George Albert Lunt, 1874-1960, KW83-BYY 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1875:</time> Birth of Child: 18 December 1875, Cedar City, Iron, Utah Territory, United States, Alice Maude Wilson Lunt, 1875-1962, KWC6-751 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1876:</time> Birth of Child: 29 August 1876, Cedar City, Iron, Utah Territory, United States, Owen Lunt, 1876-1876, KWVM-1BT 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1876:</time> Death of Child: 29 August 1876, Cedar City, Iron, Utah Territory, United States, Owen Lunt, 1876-1876, KWVM-1BT 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1878:</time> Birth of Child: 14 January 1878, Cedar City, Iron, Utah Territory, United States, Thomas Amos Lunt, 1878-1947, KWZH-C3N 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1878:</time> Marriage: 16 January 1878, St. George, Washington, Utah, United States, Sarah Ann Lunt, 1858-1921, KWNF-QGT <a href="http://henrylunt.org/SarahAnnLunt.jpg" style="color: #8ebf42">info</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1879:</time> Birth of Child: 5 February 1879, Cedar City, Iron, Utah Territory, United States, Egerton Lunt, 1879-1918, KWZY-Q93 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1880:</time> Birth of Child: 25 October 1880, Cedar City, Iron, Utah Territory, United States, Ellen Gower Lunt, 1880-1945, KWC8-4T8 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1881:</time> Birth of Child: 5 April 1881, Cedar City, Iron, Utah Territory, United States, Broughton Lunt, 1881-1946, LY31-C6P 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1883:</time> Indians Mission, 1883, United States
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1883:</time> Birth of Child: 19 February 1883, Cedar City, Iron, Utah Territory, United States, Rachel Ann Lunt, 1883-1968, KWCD-ZLX 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1883:</time> Birth of Child: 22 February 1883, Johnson Springs, Iron, Utah Territory, United States, Parley "L" Lunt, 1883-1968, KWZR-QYG 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1883:</time> Set Apart: 9 April 1883
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1885:</time> Birth of Child: 21 July 1885, Nephi, Juab, Utah Territory, United States, Edward Lunt, 1885-1959, KWCY-S1V 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1886:</time> Mission: 1886, England, United Kingdom
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1887:</time> Court: 1887, Utah, United States
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1888:</time> Birth of Child: 7 March 1888, Moccasin, Mohave, Arizon Territory, United States, Heaton Lunt, 1888-1969, KWCJ-VHW
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1888:</time> Birth of Child: 16 March 1888, Buenaventura, Chihuahua, Mexico, Frank George Lunt, 1888-1962, LCXG-5FN 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1890:</time> Birth of Child: 24 April 1890, Colonia Pacheco, Chihuahua, Mexico, Alma L Lunt, 1890-1957, KWJD-ZSV 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1892:</time> Birth of Child: 15 November 1892, Colonia Pacheco, Chihuahua, Mexico, Owen Lunt, 1892-1934, KWCH-QTJ 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1893:</time> Marriage: 30 May 1893, St. George Temple, Sealing to Spouse
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1893:</time> Sealing: 30 May 1893, St. George Utah Temple, St. George, Washington, Utah, United States, Sealing to Spouse
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1896:</time> Birth of Child: 16 July 1896, Colonia Pacheco, Chihuahua, Mexico, Clarence L Lunt, 1896-1939, KWCV-VHR 
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1902:</time> Death: 22 January 1902, Colonia Pacheco, Casas Grandes, Chihuahua, Mexico <a href="https://www.google.com/maps/place/Col+Pacheco,+Chihuahua,+Mexico/@30.0868228,-108.3540423,15z/data=!3m1!4b1!4m6!3m5!1s0x86c4b99e1ca9ead3:0xde7fa5be1b6c18f0!8m2!3d30.086805!4d-108.3452875!16s%2Fg%2F1tfk9g5k" style="color: #8ebf42">map</a>
                      </div>
                    </li>
                    <li>
                      <div>
                        <time>1902:</time> Burial: 24 January 1902, Colonia Pacheco Cemetery, Colonia Pacheco, Chihuahua, Mexico <a href="https://www.google.com/maps/place/Col+Pacheco,+Chihuahua,+Mexico/@30.0868228,-108.3540423,15z/data=!3m1!4b1!4m6!3m5!1s0x86c4b99e1ca9ead3:0xde7fa5be1b6c18f0!8m2!3d30.086805!4d-108.3452875!16s%2Fg%2F1tfk9g5k" style="color: #8ebf42">map</a>
                      </div>
                    </li>
                  </ul>
                </section>


<%-- %>                  </asp:Panel>           --%>

<%--              </asp:Panel>       --%>
 
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
              <asp:Label ID="lblFooter" runat="server" Text="Copyright © 2024 Jay M. Jones - All Rights Reserved" style="position: absolute; left: 400px; top: 10000px;" ></asp:Label>
          </div>     
            
    </form>

        <script type="text/javascript" >
            (function () {
                "use strict";

                // define variables
                var items = document.querySelectorAll(".timeline li");

                // check if an element is in viewport
                // http://stackoverflow.com/questions/123999/how-to-tell-if-a-dom-element-is-visible-in-the-current-viewport
                function isElementInViewport(el) {
                    var rect = el.getBoundingClientRect();
                    return (
                        rect.top >= 0 &&
                        rect.left >= 0 &&
                        rect.bottom <=
                        (window.innerHeight || document.documentElement.clientHeight) &&
                        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
                    );
                }

                function callbackFunc() {
                    for (var i = 0; i < items.length; i++) {
                        if (isElementInViewport(items[i])) {
                            items[i].classList.add("in-view");
                        }
                    }
                }

                // listen for events
                window.addEventListener("load", callbackFunc);
                window.addEventListener("resize", callbackFunc);
                window.addEventListener("scroll", callbackFunc);
            })();

        </script>


</body>
</html>
