<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm13_1.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03.WebForm13_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            学号:<asp:Label ID="sid" runat="server" Text="Label"></asp:Label>
            <br />
            姓名:<asp:TextBox ID="name" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            性别:<asp:TextBox ID="sex" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            班级:<asp:TextBox ID="sclass" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
        </div>
    </form>
</body>
</html>
