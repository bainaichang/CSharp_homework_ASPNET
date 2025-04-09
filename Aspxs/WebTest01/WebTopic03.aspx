<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic03.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>成绩: </label>
            <br />
            <input type="number" name="name" value="" runat="server" id="score" />
            <br />
            <button runat="server" onserverclick="Result">计算</button>
            <br />
            <label>等级: </label>
            <br />
            <input type="text" name="name" value="" runat="server" id="res" />
        </div>
    </form>
</body>
</html>
