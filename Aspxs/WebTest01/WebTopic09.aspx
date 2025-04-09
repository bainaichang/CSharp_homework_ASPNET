<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic09.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic09" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="checklist01" runat="server">
            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="result" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
