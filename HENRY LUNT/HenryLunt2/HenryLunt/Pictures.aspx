<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pictures.aspx.cs" Inherits="StaticPages_Pictures" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">


    <head runat="server">

        <title>Sierra Jewels Photo Gallery</title>
        
        <script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript" src="jquery.lightbox-0.5.js"></script>
        
        <link rel="stylesheet" type="text/css" href="jquery.lightbox-0.5.css" media="screen" />

        <script type="text/javascript">
        $(function() {
	        $('a').lightBox(); // Select all links in the page
        });
        </script>

        <link href="../gallery.css" rel="stylesheet" type="text/css" />
    </head>


    <body>

      <form id="form1" runat="server">
      
        <div id="header">
          <center><h1>Henry Lunt - Historic Photos</h1></center>
        </div>
        
        <span class="cell">
          <a href="http://DynamicProWebSites.Com/photos/AboveLeConteCanyon.jpg"><img src="http://DynamicProWebSites.Com/thumbnails/AboveLeConteCanyon.jpg" alt="" /></a>
        </span>
        
         
      </form>
      
    </body>


</html>
