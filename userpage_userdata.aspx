<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userpage_userdata.aspx.cs" Inherits="userpage_userdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Data</title>
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

        <!--user data table-->

        <div class="logout-box">
            <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
            </div>
        <div class="main-page">
        <div class="usertable-box">
              <asp:GridView ID="userdatatable" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
            
       </div>
        
        <div class="download-option">
        
                <table>
                    <tr>
                       <td>Enter your FileID you want to download</td> 
                        
                </tr>
                    <tr><td><asp:TextBox ID="fileid" runat="server" ToolTip="Enter file ID of a file you want to download" Width="61px"></asp:TextBox></td></tr>
                    <tr>
                <td><asp:Button ID="download" runat="server" Text="Click Here To Generate OTP" OnClick="download_Click" /></td>
                        </tr>
                    <tr>
                <td>Enter Your OTP here&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Width="60px"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                <td>
                    <asp:Button ID="vod" runat="server" OnClick="Button1_Click" Text="Verify OTP and download" />
                        </td>
                        </tr>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
            </table>
                    
        </div> </div>
    </form>
</body>
</html>
