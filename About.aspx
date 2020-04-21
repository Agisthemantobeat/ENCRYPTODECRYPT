<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
    <link rel="stylesheet" href="StyleSheet.css"/>
    <style>
        .tet
        {
            margin-left:40px;
        }
 </style>
</head>
<body bgcolor="#313840">
    <form id="form1" runat="server">
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
        <div class="login-register">
            <div class="link-container">
                <ul class="buttons-link">
                    
                    <a href="signup.aspx"> <li><img width="25px" height="25px" src="icons8-registration-50.png"/>&nbsp;<span class="register-login">Register</span></li></a>
                    <a href="login.aspx"><li><img width="25px" height="25px" src="icons8-login-50.png"/>&nbsp;<span class="register-login">Login</span></li></a>
                        
                    </ul>
                
            </div>
        </div>

        <br/><br/><br/><br/>
        <div class="tet">
            <h1 align="center" ><font size="100"> About EOD(EncryptODecrypt)</font></h1><br/><br/><br/>
 <font size="100" > It is a well designed fully secured website in which you can upload your files
without being tensionized. It is highly secured with otp validations at the time of downloading the file.
This website is a trusted product assured by HCL technologies.
        </div>
    </form>
</body>
</html>
