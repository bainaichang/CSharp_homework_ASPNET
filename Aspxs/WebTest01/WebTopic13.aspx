<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic13.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .left {
            text-align: center;
            display: inline-block;
            margin: 0 10px;
            width: 200px; 
        }

        .center {
            text-align: right;
            display: inline-block;
            margin: 0 auto;
            width: 600px; /* 设置一个宽度以便居中 */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="ImageMap1" runat="server" HotSpotMode="PostBack" ImageUrl="~/Picture/work.png" OnClick="ImageMap1_Click">
                <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="flower" Radius="170" X="200" Y="235" />
                <asp:CircleHotSpot HotSpotMode="PostBack" PostBackValue="egg" Radius="138" X="535" Y="238" />
            </asp:ImageMap>
            <br />
            <asp:Label ID="Label1" runat="server" Text="你点击了鲜花"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="你点击了鸡蛋" CssClass="center"></asp:Label>
            <br />
            <asp:Label ID="result" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
