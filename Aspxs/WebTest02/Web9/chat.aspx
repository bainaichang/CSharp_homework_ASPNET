<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web9.chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:TextBox ID="chatBox" runat="server" Height="384px" TextMode="MultiLine" Width="750px"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="发言"></asp:Label>
            :<asp:TextBox ID="talkString" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="发送" />
            <br />
            <asp:Label ID="onlineNumber" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="flush" runat="server" OnClick="Button1_Click" Text="刷新" />
        </div>
    </form>
</body>
</html>
