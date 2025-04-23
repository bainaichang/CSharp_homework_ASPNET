<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm05.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web5.WebForm05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        <style type="text/css" >
        .auto-style1 {
            width: 121px;
        }

        table tr td:first-child {
            text-align: right;
        }

        .btn {
            padding: 12px 24px;
            background-color: deepskyblue;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            user-select: none;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            用户名:<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            密码:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Font-Names="JetBrains Mono SemiBold" Text="Login" />

        </div>
    </form>
</body>
</html>
