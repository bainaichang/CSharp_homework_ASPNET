<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic08.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic08" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>粗体</asp:ListItem>
                <asp:ListItem>斜体</asp:ListItem>
                <asp:ListItem>红色</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Label ID="Label1" runat="server" Text="测试文本"></asp:Label>
        </div>
    </form>
</body>
</html>
