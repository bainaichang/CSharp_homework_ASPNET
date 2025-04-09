<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic05.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="ddlAnimal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAnimal_SelectedIndexChanged" Width="100px">
        </asp:DropDownList>
        <div>

            <asp:Image ID="Image1" runat="server" Height="43px" />

        </div>
    </form>
</body>
</html>
