<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Aspxs/index.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.index" %>

<!DOCTYPE html>
<head>
    <style>
        table {
            border-style: solid;
        }
        td:first-child{
            text-align:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>用户名:</td>
                <td><input type="text" id="username" runat="server"/></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td><input type="password" id="password" runat="server"/></td>
            </tr>
        </table>
        <input id="input1" type="button" runat="server" onserverclick="click1" value="un"/>
        <%-- <input id="input2" type="button" runat="server" onserverclick="click2" value="pw"/> --%>


        <p>
            <asp:Label ID="Label1" runat="server" Text="1"></asp:Label>
        </p>


        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="437px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>


    </form>
</body>



