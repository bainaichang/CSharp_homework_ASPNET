<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic04.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic04" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Picture/Image_1711671272583.jpg" PostBackUrl="~/Aspxs/WebTest01/WebTopic01.aspx" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </div>
        <asp:ListBox ID="ListBox1" runat="server" Height="273px" Width="311px"></asp:ListBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
