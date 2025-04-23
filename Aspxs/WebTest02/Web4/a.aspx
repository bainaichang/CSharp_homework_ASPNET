<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web4.a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Transfer" />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="execute" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="redirect" />
        </div>
    </form>
</body>
</html>
