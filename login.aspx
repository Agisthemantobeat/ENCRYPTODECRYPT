<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="StyleSheet.css"/>
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
             <!--Login @@-->
        <div class="signup_signin-body">
            <h2 style="text-align:center; color:#dee2eb;font-family:Arial;font-weight:500; letter-spacing:2px;  margin-bottom:0px;">Login</h2>
            <div style="margin:0 auto; background:linear-gradient(90deg,white,rgba(0,0,0,0)); width:40%; height:1px; ";></div>
            <br/>
            <table class="signup_signin-table">  
                <tr>  
                    <td>Username</td>  
                    
                    <td class="auto-style1"> 
                        <asp:TextBox ID="Username" class="textbox" runat="server" Width="296px"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="This is a Required field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Password</td>
                      
                     <td class="auto-style1"> <asp:TextBox ID="password" class="textbox" runat="server" TextMode="Password" Width="298px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="This is a Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>  
                </tr>  
                  
                 
                 
                  
                <tr>  
                    <td></td>
                    <td class="auto-style1">  
                        <asp:Button ID="signin" runat="server" Text="Login" Height="34px"  Width="81px" OnClick="signin_Click" />  
                        <asp:Button ID="Button2" runat="server" Text="Forgot Password?" />
                    </td>  
                </tr> 
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="invalid" runat="server" Text="" ForeColor="Red" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr> 
            </table>  
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
