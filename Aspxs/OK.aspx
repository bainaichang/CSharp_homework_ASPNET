<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OK.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.OK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="head1" runat="server">登录成功! 欢迎您! Username:</h1>
            <input id="input1" type="text" value=""/><br />
            <h2 id="head2"></h2>
        </div>
    </form>
    <script>
        document.getElementById('input1').addEventListener('keyup', e => {
            document.getElementById('head2').innerHTML = document.getElementById('input1').value
        })
    </script>
</body>
</html>
