<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic15.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 141px;
        }

        table tr td:first-child {
            text-align: right;
        }
    </style>
</head>
<body>
    <script type="text/javascript">
    </script>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="用户名不能为空" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="姓名:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fullname" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fullname" ErrorMessage="请输入2~4个汉字" ValidationExpression="^[\u4e00-\u9fa5]{2,4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="国籍:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>中国</asp:ListItem>
                            <asp:ListItem>美国</asp:ListItem>
                            <asp:ListItem>俄罗斯</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="国籍必须选择"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="密码:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="确认密码:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="passwordAgain" runat="server" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="passwordAgain" ErrorMessage="两次密码输入不一致"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="年龄:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="age" runat="server" TextMode="Number" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage="年龄必须在18~60岁" MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="出生日期:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="birthDate" runat="server" TextMode="DateTime" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="birthDate" ErrorMessage="日期格式不对,应为yyyyMMdd" ValidateRequestMode="Enabled" ValidationExpression="^(19[0-9]{2}|20[0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="身份证号:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="IDcard" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IDcard" ErrorMessage="身份证格式不对!" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label12" runat="server" Text="个人简介:"></asp:Label>
            <asp:TextBox ID="personalProfile" runat="server" TextMode="MultiLine" ValidateRequestMode="Enabled"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="personalProfile" ErrorMessage="长度不得小于10" ValidateRequestMode="Enabled" ValidationExpression="^.{10,}$"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="取消" Style="margin-left: 200px;" />
        </div>
    </form>
</body>
</html>
