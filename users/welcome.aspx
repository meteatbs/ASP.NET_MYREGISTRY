<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="users_welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Your Registration succesfully</h2>
    </div>
       <div style="width:100%;height:150px;background-color:Yellow;font-size:large">
        <asp:Label ID="Label1" runat="server" Text="Registration Succesfull..."></asp:Label>
       <br />
       <br />
       <br />
           <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Click here</asp:LinkButton>


    </form>
</body>
</html>
