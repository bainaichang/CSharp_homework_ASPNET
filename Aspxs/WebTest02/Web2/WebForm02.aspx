<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm02.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web2.WebForm02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
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
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 12px 24px;
            background-color: deepskyblue;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            user-select: none;
            left: 0px;
            top: -4px;
            width: 157px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">用户名:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">密码:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;

            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="stu">学生</asp:ListItem>
                <asp:ListItem Value="root">管理员</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="登录" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
