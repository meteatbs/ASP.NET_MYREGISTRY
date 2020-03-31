<%@ Page Title="" Language="C#" MasterPageFile="~/users/UserMasterPage.master" AutoEventWireup="true" CodeFile="GuestBook.aspx.cs" Inherits="users_GuestBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 70%;
        }
        .style3
        {
         
           font-family:"Times New Roman",Times,serif;
           font-size:x-large;
           color:#0000FF;
           text-transform:uppercase;
           font-style:italic;
           font-weight:bold;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<p>


</p>
    <table class="style2" align="center" cellpadding="0" cellspacing="0" bgcolor="#FF9900" border="2">
        <tr>
            <td align="center" colspan="2" class="style3">
                GUESTBOOK</td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="FULL NAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="CITY"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="MOBILE NO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="COMMENTS"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" style="margin-left: 0px" Width="100px" />
            </td>
        </tr>
        <tr>
        <td colspan="2"> 
           <h2> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
        </td>
        </tr>
    </table>
<br />
</asp:Content>

