<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic06.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic06" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ListBox ID="ListBox1" runat="server" Height="317px" SelectionMode="Multiple" Width="341px"></asp:ListBox>
            <br />
            添加水果:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 27px" Text="添加" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除选中项" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="显示选中项" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="输出所有项" />
            <br />
            <asp:Label ID="ResultLab" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
