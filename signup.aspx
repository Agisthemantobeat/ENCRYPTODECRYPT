<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="StyleSheet.css"/>
    <style type="text/css">
        
    </style>
</head>
<body>
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
          <!--signup-body-->
        <asp:HiddenField ID="hfuserID" runat="server"/>
        <div class="signup_signin-body">
            <h2 style="text-align:center; color:#dee2eb;font-family:Arial;font-weight:500; letter-spacing:2px;  margin-bottom:0px;">Register</h2>
            <div style="margin:0 auto; background:linear-gradient(90deg,white,rgba(0,0,0,0)); width:40%; height:1px; ";></div>
            <br/>
            <table class="signup_signin-table">  
                <tr>  
                    <td>Username</td>  
                    
                    <td class="auto-style1">  
                        <asp:TextBox ID="username" class="textbox" runat="server" Width="296px"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="This is a Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Password</td>
                      
                     <td class="auto-style1"> <asp:TextBox ID="pwd" class="textbox" runat="server" TextMode="Password" Width="298px"></asp:TextBox>
                    </td>  
                </tr>  
                <tr>  
                    <td>Confirm Password</td>  
                    <td class="auto-style1">  
                        <asp:TextBox ID="confirmpwd" class="textbox" runat="server" TextMode="Password" Width="295px"></asp:TextBox>  
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="confirmpwd" ErrorMessage="Password and Confirm Password doesn't match" ForeColor="Red">*</asp:CompareValidator>
                    </td>  
                </tr>  
                 
                 
                <tr>  
                    <td>Gmail</td>  
                    <td class="auto-style1">  
                        <asp:TextBox ID="gmail" class="textbox" runat="server" Height="16px" Width="291px" ></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is a Required field" ForeColor="Red" ControlToValidate="gmail">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="gmail" ErrorMessage="This field should be in Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1"></td>
                    <td class="auto-style1">  
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="34px"  Width="81px" OnClick="Button1_Click"  />  
                    </td>  
                </tr>  
                <tr>
                    <td></td>
                    <td>
                        
                        <asp:Label ID="successmessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                        <br/>
                        <asp:Label ID="failedmessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                        
                    </td>
                </tr>
               
                <asp:Label ID="Label1" runat="server"></asp:Label>
               
            </table>  
            <asp:ValidationSummary class="validt" ID="ValidationSummary1" runat="server" ForeColor="Black" />
        </div>

    </form>
</body>
</html>
