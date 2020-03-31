<%@ Page Title="" Language="C#" MasterPageFile="~/MAINM.master" AutoEventWireup="true" CodeFile="loginform.aspx.cs" Inherits="loginform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style4{
width:50%;
text-transform :uppercase ;
font-size :medium ;
background-color :#ffffcc;
font-weight :700;
}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" cellpadding="10" cellspacing ="5" class="style4">
<tr>
    <td align ="center" colspan ="2">LOGIN</td>


</tr>

<tr>
    <td align ="center" class ="style5">UserName:</td>
    <td> 
        <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_user" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>

</tr>

<tr>
    <td align ="center" class ="style5">Password :</td>
    <td>  
        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>


</tr>

<tr>
    <td align ="center" class ="style5" colspan ="2">
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /> </td>
</tr>

<tr>
    <td align ="left" class ="style5" colspan ="2" >
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="#">Forget Password</asp:HyperLink> </td>
</tr>
<tr>
    <td align ="right" class ="style5" colspan ="2"> 
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl ="~/users/Newaccount.aspx">Create New Account</asp:HyperLink></td>
</tr>
<tr>
<td align ="center" class ="style5" colspan ="2">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </td>
</tr>
</table>

</asp:Content>

