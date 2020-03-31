<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newaccount.aspx.cs" Inherits="users_Newaccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" style="background-color:#99FF66;font-size:x-large;color:#FF00FF;text-align:center">
                    GOVERNMENT REGISTRY</td>
            </tr>
            <tr>
                <td colspan="2" align="justify"  style="background-color:Blue;color:White;text-align:center;font-size:medium;">
                    Create new account</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="First name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Last name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="login username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Check username</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Choose Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                        Text="I accept create my account" onclick="btnRegister_Click" />
                </td>
                <td>
                    <asp:Button ID="btnReset" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                        Text="Reset" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
