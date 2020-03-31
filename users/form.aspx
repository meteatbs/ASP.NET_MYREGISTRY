<%@ Page Title="" Language="C#" MasterPageFile="~/users/UserMasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="users_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" bgcolor="Yellow" class="style1" cellpadding="10" cellspacing="5">
        <tr>
            <td align="center">
                <asp:HyperLink ID="HyperLink7" runat="server" 
                    NavigateUrl="~/users/Birthform.aspx">BIRTH REGISTRATION</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    NavigateUrl="~/users/Deathform.aspx">DEATH REGISTRATION</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" align="center">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="#">DIVORCE REGISTRATION</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="#">PAN CARD</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="#">VOTER CARD</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

