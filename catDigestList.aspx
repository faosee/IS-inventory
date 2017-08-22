<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catDigestList.aspx.cs" Inherits="invtory.catDigestList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>รายการหมวดหมู่ย่อย</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" DataKeyNames="catDigest_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CellSpacing="5" PageSize="20" CssClass="table table-striped jambo_table bulk_action">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="catDigest_id" HeaderText="รหัสหมวดหมู่ย่อย" ReadOnly="True" SortExpression="catDigest_id" />
            <asp:BoundField DataField="catDigest_name" HeaderText="ชื่อหมวดหมู่ย่อย" SortExpression="catDigest_name" />
            <asp:BoundField DataField="catMain_id" HeaderText="หมวดหมู่หลัก" SortExpression="catMain_id" />
            <asp:BoundField DataField="active_status" HeaderText="สถานะ" SortExpression="active_status" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" HorizontalAlign="Center" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [categoryDigest] WHERE [catDigest_id] = @original_catDigest_id AND (([catDigest_name] = @original_catDigest_name) OR ([catDigest_name] IS NULL AND @original_catDigest_name IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [categoryDigest] ([catDigest_id], [catDigest_name], [catMain_id], [active_status]) VALUES (@catDigest_id, @catDigest_name, @catMain_id, @active_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [categoryDigest]" UpdateCommand="UPDATE [categoryDigest] SET [catDigest_name] = @catDigest_name, [catMain_id] = @catMain_id, [active_status] = @active_status WHERE [catDigest_id] = @original_catDigest_id AND (([catDigest_name] = @original_catDigest_name) OR ([catDigest_name] IS NULL AND @original_catDigest_name IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_catDigest_id" Type="Int32" />
            <asp:Parameter Name="original_catDigest_name" Type="String" />
            <asp:Parameter Name="original_catMain_id" Type="Int32" />
            <asp:Parameter Name="original_active_status" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="catDigest_id" Type="Int32" />
            <asp:Parameter Name="catDigest_name" Type="String" />
            <asp:Parameter Name="catMain_id" Type="Int32" />
            <asp:Parameter Name="active_status" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="catDigest_name" Type="String" />
            <asp:Parameter Name="catMain_id" Type="Int32" />
            <asp:Parameter Name="active_status" Type="Int32" />
            <asp:Parameter Name="original_catDigest_id" Type="Int32" />
            <asp:Parameter Name="original_catDigest_name" Type="String" />
            <asp:Parameter Name="original_catMain_id" Type="Int32" />
            <asp:Parameter Name="original_active_status" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
