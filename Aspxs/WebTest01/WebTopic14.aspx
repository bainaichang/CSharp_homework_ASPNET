<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic14.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic13_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>游泳</asp:ListItem>
                <asp:ListItem>跑步</asp:ListItem>
                <asp:ListItem>羽毛球</asp:ListItem>
                <asp:ListItem>乒乓球</asp:ListItem>
            </asp:CheckBoxList>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
