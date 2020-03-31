<%@ Page Title="" Language="C#" MasterPageFile="~/users/UserMasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="users_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 100%;
            border:1px solid #00ccff;
            background-color:#ffff99;
            
        }
        .style3
        {
         font-size:x-large;
         color:#000080;
         text-decoration:underline;   
         }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
fdsfds<table class="style2">
        <tr>
            <td align="center" class="style3">Services 
                &nbsp;</td>
        </tr>
        <tr>
            <td> 
                <asp:Label ID="Label2" runat="server" Text="Birth Registration" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Death Registration" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Marriage Registration" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Divorce Registration" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Ration Card" Font-Bold="True" 
                    ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Pan Card" Font-Bold="True" 
                    ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Passport Registration" 
                    Font-Bold="True" ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Water" Font-Bold="True" 
                    ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>

