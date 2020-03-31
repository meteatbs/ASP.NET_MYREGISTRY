<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Government Registry</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%;height:150px;background-color:Gray;font-size:large">
        <asp:Label ID="Label1" runat="server" Text="Logout Succesfull..."></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/logout.aspx">You will redirect in 5 seconds. if you didn't click here to redirect.</asp:HyperLink>

    </div>
    </form>
</body>
</html>
