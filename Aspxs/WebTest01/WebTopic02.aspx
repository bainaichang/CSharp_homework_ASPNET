<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic02.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        /* 全局样式 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        /* 容器样式 */
        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* 标签样式 */
        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        /* 输入框样式 */
        input[type="number"] {
            width: 200px;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* 按钮样式 */
        .btn {
            width: 50px;
            padding: 8px;
            margin: 5px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* 结果输入框样式 */
        #result {
            width: 200px;
            padding: 8px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f9f9f9;
            font-weight: bold;
        }
    </style>
    <title>ZLF_Test02</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>操作数1: </label>
            <input type="number" name="a" id="a" value="" runat="server" /><br />
            <label>操作数2: </label>
            <input type="number" name="b" id="b" value="" runat="server" />

        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="+" CssClass="btn"/>
        <asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click"  CssClass="btn"/>
        <asp:Button ID="Button3" runat="server" Text="*" OnClick="Button3_Click"  CssClass="btn"/>
        <asp:Button ID="Button4" runat="server" Text="/" OnClick="Button4_Click"  CssClass="btn"/><br />
        <label>结果: </label>
        <input type="number" id="result" value="" runat="server" />
    </form>
</body>
</html>
