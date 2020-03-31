<%@ Page Title="" Language="C#" MasterPageFile="~/users/UserMasterPage.master" AutoEventWireup="true" CodeFile="Birthform.aspx.cs" Inherits="users_Birthform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 60%;
            background-color: #CC33FF;
                    }
        .style3
        {
            height: 27px;
        }
        .style4
        {
          color: #0000FF;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
            text-transform: uppercase;   
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table align="center" border ="1" class="style2">
        <tr>
            <td colspan="2" align ="center" class="style4 ">
                BIRTH REGISTRATION</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Date of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_dayofbirth" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdl_sex" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Name of Child,if any"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_nochild" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Name of Father"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_nameoffather" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Name of Mother"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_nameofmother" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Palce of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_placeofbirth" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        
        
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Name of Village/Town"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_nameoftown" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="District" Font-Bold="True" 
                Font-Size="15pt" ForeColor="White"></asp:Label>
        </td>
        <td> 
            <asp:TextBox ID="txt_nameofdistrict" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="State"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_state" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        
        
        
        
        
        
        
        <tr>
            <td>
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="White" Text="Birth Time"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_birthtime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#FFCC00" 
                    Font-Bold="True" ForeColor="Black" onclick="Button1_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="Red" 
                    ForeColor="White" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label21" runat="server" BackColor="#0066FF" Font-Bold="True" 
                    Font-Italic="True" Font-Size="17pt" ForeColor="White" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>


</asp:Content>

