<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="invList.aspx.cs" Inherits="invtory.invList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>รายการพัสดุ</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="inv_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="table table-striped jambo_table bulk_action">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="inv_id" HeaderText="รหัสพัสดุ" InsertVisible="False" ReadOnly="True" SortExpression="inv_id" />
                <asp:BoundField DataField="invName" HeaderText="ชื่อพัสดุ" SortExpression="invName" />
                <asp:BoundField DataField="price" HeaderText="ราคา" SortExpression="price" />
                <asp:BoundField DataField="year_id" HeaderText="ปีงบประมาณ" SortExpression="year_id" />
                <asp:BoundField DataField="invDetail" HeaderText="รายละเอียด" SortExpression="invDetail" />
                <asp:BoundField DataField="createDate" HeaderText="วันที่ลงทะเบียน" SortExpression="createDate" />
                <asp:CommandField ButtonType="Button" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowHeader="True" DeleteText="ลบ" EditText="แก้ไข" ShowEditButton="True" UpdateText="ปรับปรุง" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                ไม่พบข้อมูล
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [inventory] WHERE [inv_id] = @original_inv_id AND (([invName] = @original_invName) OR ([invName] IS NULL AND @original_invName IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([year_id] = @original_year_id) OR ([year_id] IS NULL AND @original_year_id IS NULL)) AND (([invDetail] = @original_invDetail) OR ([invDetail] IS NULL AND @original_invDetail IS NULL)) AND (([createDate] = @original_createDate) OR ([createDate] IS NULL AND @original_createDate IS NULL))" InsertCommand="INSERT INTO [inventory] ([invName], [price], [year_id], [invDetail], [createDate]) VALUES (@invName, @price, @year_id, @invDetail, @createDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [inv_id], [invName], [price], [year_id], [invDetail], [createDate] FROM [inventory]" UpdateCommand="UPDATE [inventory] SET [invName] = @invName, [price] = @price, [year_id] = @year_id, [invDetail] = @invDetail, [createDate] = @createDate WHERE [inv_id] = @original_inv_id AND (([invName] = @original_invName) OR ([invName] IS NULL AND @original_invName IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([year_id] = @original_year_id) OR ([year_id] IS NULL AND @original_year_id IS NULL)) AND (([invDetail] = @original_invDetail) OR ([invDetail] IS NULL AND @original_invDetail IS NULL)) AND (([createDate] = @original_createDate) OR ([createDate] IS NULL AND @original_createDate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_invName" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_year_id" Type="Int32" />
                <asp:Parameter Name="original_invDetail" Type="String" />
                <asp:Parameter Name="original_createDate" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="invName" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="year_id" Type="Int32" />
                <asp:Parameter Name="invDetail" Type="String" />
                <asp:Parameter Name="createDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="invName" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="year_id" Type="Int32" />
                <asp:Parameter Name="invDetail" Type="String" />
                <asp:Parameter Name="createDate" Type="String" />
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_invName" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_year_id" Type="Int32" />
                <asp:Parameter Name="original_invDetail" Type="String" />
                <asp:Parameter Name="original_createDate" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
