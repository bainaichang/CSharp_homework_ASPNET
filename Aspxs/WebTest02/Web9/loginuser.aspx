<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginuser.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web9.loginuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="label1" runat="server" Text="姓名:"></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />

        </div>
    </form>
</body>
</html>
