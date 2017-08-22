<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catTypeList.aspx.cs" Inherits="invtory.catTypeList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>รายการประเภทพัสดุ</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="10" CellSpacing="5" DataKeyNames="catType_id" DataSourceID="getCatType" EmptyDataText="ไม่พบข้อมูล" ForeColor="#333333" GridLines="None" PageSize="20" CssClass="table table-striped jambo_table bulk_action" AllowCustomPaging="True" AllowPaging="True" AutoGenerateEditButton="True" EnableSortingAndPagingCallbacks="True" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="catType_id" HeaderText="รหัสประเภท" ReadOnly="True" SortExpression="catType_id" />
                <asp:BoundField DataField="catType_name" HeaderText="ประเภทพัสดุ" SortExpression="catType_name" />
                <asp:CommandField ButtonType="Button" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                ไม่พบข้อมูล
            </EmptyDataTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NumericFirstLast" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="getCatType" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [categoryType] WHERE [catType_id] = @original_catType_id AND (([catType_name] = @original_catType_name) OR ([catType_name] IS NULL AND @original_catType_name IS NULL))" InsertCommand="INSERT INTO [categoryType] ([catType_id], [catType_name]) VALUES (@catType_id, @catType_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [catType_id], [catType_name] FROM [categoryType]" UpdateCommand="UPDATE [categoryType] SET [catType_name] = @catType_name WHERE [catType_id] = @original_catType_id AND (([catType_name] = @original_catType_name) OR ([catType_name] IS NULL AND @original_catType_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_catType_id" Type="Int32" />
                <asp:Parameter Name="original_catType_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="catType_id" Type="Int32" />
                <asp:Parameter Name="catType_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="catType_name" Type="String" />
                <asp:Parameter Name="original_catType_id" Type="Int32" />
                <asp:Parameter Name="original_catType_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
