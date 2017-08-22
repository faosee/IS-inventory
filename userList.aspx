<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userList.aspx.cs" Inherits="invtory.userList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>รายการบัญชีผู้ใช้งาน</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource1" EmptyDataText="ไม่พบข้อมูล" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" CssClass="table table-striped jambo_table bulk_action" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" SortExpression="user_id" ApplyFormatInEditMode="True" />
                <asp:BoundField DataField="user_full_name" HeaderText="ชื่อ" SortExpression="user_full_name" />
                <asp:BoundField DataField="user_lastname" HeaderText="นามสกุล" SortExpression="user_lastname" />
                <asp:BoundField DataField="department_id" HeaderText="สังกัด" SortExpression="department_id" />
                <asp:BoundField DataField="email" HeaderText="อีเมล" SortExpression="email" />
                <asp:BoundField DataField="user_type_id" HeaderText="ประเภท" SortExpression="user_type_id" />
                <asp:BoundField DataField="active_status" HeaderText="สถานะ" SortExpression="active_status" />
                <asp:CommandField ButtonType="Button" CancelText="ยกเลิก" DeleteText="ลบ" EditText="แก้ไข" ShowDeleteButton="True" ShowEditButton="True" UpdateText="ปรับปรุง" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                ไม่พบรายการบัญชีผู้ใช้
            </EmptyDataTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [user_id], [user_full_name], [user_lastname], [department_id], [email], [user_type_id], [active_status] FROM [employee]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [employee] WHERE [user_id] = @original_user_id AND (([user_full_name] = @original_user_full_name) OR ([user_full_name] IS NULL AND @original_user_full_name IS NULL)) AND (([user_lastname] = @original_user_lastname) OR ([user_lastname] IS NULL AND @original_user_lastname IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([user_type_id] = @original_user_type_id) OR ([user_type_id] IS NULL AND @original_user_type_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [employee] ([user_id], [user_full_name], [user_lastname], [department_id], [email], [user_type_id], [active_status]) VALUES (@user_id, @user_full_name, @user_lastname, @department_id, @email, @user_type_id, @active_status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [employee] SET [user_full_name] = @user_full_name, [user_lastname] = @user_lastname, [department_id] = @department_id, [email] = @email, [user_type_id] = @user_type_id, [active_status] = @active_status WHERE [user_id] = @original_user_id AND (([user_full_name] = @original_user_full_name) OR ([user_full_name] IS NULL AND @original_user_full_name IS NULL)) AND (([user_lastname] = @original_user_lastname) OR ([user_lastname] IS NULL AND @original_user_lastname IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([user_type_id] = @original_user_type_id) OR ([user_type_id] IS NULL AND @original_user_type_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_user_full_name" Type="String" />
                <asp:Parameter Name="original_user_lastname" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int32" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_user_type_id" Type="Int32" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="user_full_name" Type="String" />
                <asp:Parameter Name="user_lastname" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="user_type_id" Type="Int32" />
                <asp:Parameter Name="active_status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_full_name" Type="String" />
                <asp:Parameter Name="user_lastname" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="user_type_id" Type="Int32" />
                <asp:Parameter Name="active_status" Type="Int32" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_user_full_name" Type="String" />
                <asp:Parameter Name="original_user_lastname" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int32" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_user_type_id" Type="Int32" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
