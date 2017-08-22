<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userListview.aspx.cs" Inherits="invtory.userListview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"><h3>รายการบัญชีผู้ใช้งานระบบ</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="userlist" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" CssClass="table table-striped jambo_table bulk_action" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="User" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_full_name" HeaderText="ชื่อ" SortExpression="user_full_name" />
            <asp:BoundField DataField="user_lastname" HeaderText="นามสกุล" SortExpression="user_lastname" />
            <asp:BoundField DataField="department_id" HeaderText="สำนักงาน" SortExpression="department_id" />
            <asp:BoundField DataField="email" HeaderText="อีเมล" SortExpression="email" />
            <asp:BoundField DataField="user_type_id" HeaderText="ประเภท" SortExpression="user_type_id" />
            <asp:BoundField DataField="active_status" HeaderText="สถานะ" SortExpression="active_status" />
            <asp:CommandField ButtonType="Button" DeleteText="ลบ" EditText="แก้ไข" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateText="ปรับปรุง" />
        </Columns>
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
        <asp:SqlDataSource ID="userlist" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [employee] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [employee] ([user_id], [user_password], [user_full_name], [user_lastname], [department_id], [email], [user_type_id], [active_status]) VALUES (@user_id, @user_password, @user_full_name, @user_lastname, @department_id, @email, @user_type_id, @active_status)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [user_password] = @user_password, [user_full_name] = @user_full_name, [user_lastname] = @user_lastname, [department_id] = @department_id, [email] = @email, [user_type_id] = @user_type_id, [active_status] = @active_status WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
                <asp:Parameter Name="user_full_name" Type="String" />
                <asp:Parameter Name="user_lastname" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="user_type_id" Type="Int32" />
                <asp:Parameter Name="active_status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_password" Type="String" />
                <asp:Parameter Name="user_full_name" Type="String" />
                <asp:Parameter Name="user_lastname" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="user_type_id" Type="Int32" />
                <asp:Parameter Name="active_status" Type="Int32" />
                <asp:Parameter Name="user_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
