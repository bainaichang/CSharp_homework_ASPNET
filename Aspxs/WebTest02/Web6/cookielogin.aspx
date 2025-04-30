<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cookielogin.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web6.cookielogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="密码:"></asp:Label>
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
        </div>
    </form>
</body>
</html>
