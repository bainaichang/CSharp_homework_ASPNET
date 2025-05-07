<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="name" DataValueField="id">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03.DataClasses1DataContext" EntityTypeName="" TableName="Student">
            </asp:LinqDataSource>
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="确定" Width="46px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            
        </div>
    </form>
</body>
</html>
