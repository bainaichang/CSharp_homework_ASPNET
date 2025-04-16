<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebTopic16.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01.WebTopic16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <script language="javascript" type="text/javascript">
        function clientJiaoYan(source,args) {
            let v = document.getElementById('TextBox1').value
            v = parseInt(v)
            if (v % 2 == 1) {
                args.IsValid = true
            } else {
                args.IsValid = false
            }
        }
    </script>
    <form id="form1" runat="server">
        <div>

            请输入奇数:
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="奇数!" ValidateRequestMode="Enabled" ClientValidationFunction="clientJiaoYan" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

        </div>
    </form>
</body>
</html>
