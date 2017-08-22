<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="categoryMainList.aspx.cs" Inherits="invtory.categoryMainList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>รายการหมวดหมู่</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="catMain_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="table table-striped jambo_table bulk_action">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="catMain_id" HeaderText="รหัสหมวดหมู่หลัก" ReadOnly="True" SortExpression="catMain_id" />
                <asp:BoundField DataField="catMain_name" HeaderText="ชื่อหมวดหมู่หลัก" SortExpression="catMain_name" />
                <asp:BoundField DataField="active_status" HeaderText="สถานะ" SortExpression="active_status" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [status], [status_id] FROM [status]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [categoryMain] WHERE [catMain_id] = @original_catMain_id AND (([catMain_name] = @original_catMain_name) OR ([catMain_name] IS NULL AND @original_catMain_name IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [categoryMain] ([catMain_id], [catMain_name], [active_status]) VALUES (@catMain_id, @catMain_name, @active_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [categoryMain]" UpdateCommand="UPDATE [categoryMain] SET [catMain_name] = @catMain_name, [active_status] = @active_status WHERE [catMain_id] = @original_catMain_id AND (([catMain_name] = @original_catMain_name) OR ([catMain_name] IS NULL AND @original_catMain_name IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_catMain_id" Type="Int32" />
                <asp:Parameter Name="original_catMain_name" Type="String" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="catMain_id" Type="Int32" />
                <asp:Parameter Name="catMain_name" Type="String" />
                <asp:Parameter Name="active_status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="catMain_name" Type="String" />
                <asp:Parameter Name="active_status" Type="Int32" />
                <asp:Parameter Name="original_catMain_id" Type="Int32" />
                <asp:Parameter Name="original_catMain_name" Type="String" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
