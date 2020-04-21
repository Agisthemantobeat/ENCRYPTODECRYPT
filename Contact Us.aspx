<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><title>Responsive Contact Section</title>        
    <link rel="stylesheet" href="StyleSheet.css"/>
 <link rel="stylesheet" type="text/css" href="style.css"> 
</head>
    <body runat="server">
        
           <div class="header">
            <div class="inner-header">
                <div class="logo-container">
                    <h1>pgy</h1><span>encryptodecrypt</span>
                    
                </div>
                <ul class="navigation">
            <a href="index.aspx"><li>Home</li></a>
            <a href="About.aspx"><li>About</li></a>
            <a href="Contact Us.aspx"><li>Contact Us</li></a>
            <a href="Team.aspx"><li>Team</li></a>
            
        
                </ul>
            </div>
            
        </div>
 <div class="contact-section">
 <div class="inner-width">
 <h1>Get in touch with us</h1>
 <input type="text" class="name" placeholder="Your Name">
 <input type="email" class="email" placeholder="Your Email">
 <textarea rows="1" placeholder="Message" class="message"></textarea>
 <button>Get in touch</button>
 </div>
 </div>
</body>
</html>
