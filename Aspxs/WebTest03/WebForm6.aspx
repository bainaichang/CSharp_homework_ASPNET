<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>查询数据</h1>
            <label>姓名:</label>
            <asp:TextBox ID="Select_sname" runat="server"></asp:TextBox>

            <br />
            <label>班级:</label>
            <asp:DropDownList ID="Select_sclass" runat="server" DataSourceID="LinqDataSource1" DataTextField="sclass" DataValueField="sclass">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03.DataClasses1DataContext" EntityTypeName="" TableName="Student">
            </asp:LinqDataSource>
            <br />
            <asp:Button ID="selectBtn" runat="server" Text="查询" OnClick="selectBtn_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <h1>修改数据</h1>
            <label>学生id:</label>
            <asp:TextBox ID="Update_sid" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="frush" runat="server" OnClick="frush_Click" Text="刷新" />
            <br />
            <label>以下是要更新的数据:</label>
            <br />
            <label>姓名:</label>
            <asp:TextBox ID="Update_sname" runat="server"></asp:TextBox>
            <br />
            <label>性别:</label>
            <asp:DropDownList ID="Update_sex" runat="server">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:DropDownList>
            <br />
            <label>班级:</label>
            <asp:TextBox ID="Update_sclass" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="updateBtn" runat="server" Text="更新" OnClick="updateBtn_Click" />
            <br />
            <h1>新增数据</h1>
            <asp:Label ID="label0" runat="server" Text="学生id:"></asp:Label>
            <asp:TextBox ID="Insert_sid" runat="server" Width="188px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="姓名:"></asp:Label>
            <asp:TextBox ID="Insert_sname" runat="server" Width="188px"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="性别"></asp:Label>
            <asp:DropDownList ID="Insert_sex" runat="server">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label3" runat="server" Text="班级:"></asp:Label>
            <asp:TextBox ID="Insert_sclass" runat="server" Width="188px"></asp:TextBox>
            <br />
            课程id:<asp:DropDownList ID="Insert_cid" runat="server" DataSourceID="LinqDataSource2" DataTextField="cname" DataValueField="cid">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03.DataClasses1DataContext" EntityTypeName="" TableName="Course">
            </asp:LinqDataSource>
            <br />
            <asp:Label ID="Label4" runat="server" Text="成绩:"></asp:Label>
            <asp:TextBox ID="Insert_scroe" runat="server" Width="188px"></asp:TextBox>
            <br />
            <asp:Button ID="insertBtn" runat="server" Text="新增" OnClick="insertBtn_Click" />
            <br />
            <h1>删除数据</h1>
            <p>
            <asp:Label ID="Label6" runat="server" Text="学生id:"></asp:Label>
            <asp:TextBox ID="Delete_sid" runat="server" Width="188px"></asp:TextBox>
            </p>
            <p>
            <asp:Button ID="deleteBtn" runat="server" Text="删除" OnClick="deleteBtn_Click" />
            </p>

        </div>
    </form>
</body>
</html>
