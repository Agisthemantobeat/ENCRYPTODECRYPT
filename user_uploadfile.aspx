<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_uploadfile.aspx.cs" EnableViewState="true" Inherits="user_uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload Page</title>
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
      
            
         <div class="logout-box">
            <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
            </div>
          
       
        <div id="dropzone">
            <table class="dropzone-table">
                <tr>
                    <td>Upload a file you want to encrypt</td>
                    </tr>
                <tr>
                    <td>
            <asp:FileUpload ID="FileUpload1" class="fileupload" runat="server" Height="28px" Width="320px" /></td></tr>
	
                <tr><td>
        <asp:Button ID="Button2" class="upload-btn" runat="server" Text="Upload" OnClick="Button2_Click"  /></td></tr>
                    <tr>
                    <td><asp:Button ID="Button3" class="userfile-btn" runat="server" Text="Go to your files" OnClick="Button3_Click"  /></td></tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
        </table>
            </div>
    </form>
</body>
</html>
