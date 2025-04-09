<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic11.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink
                ID="HyperLink1" runat="server"
                ImageUrl="~/Picture/Image_1711671261995.jpg"
                NavigateUrl="~/Aspxs/WebTest01/WebTopic04.aspx">WebForm2</asp:HyperLink>
            <br />
            <asp:LinkButton
                ID="LinkButton1" runat="server"
                PostBackUrl="~/Aspxs/WebTest01/WebTopic02.aspx">WebForm3</asp:LinkButton>
            <br />
            <a href="WebTopic01.aspx">WebForm1</a>
        </div>
    </form>
</body>
</html>
