<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="borowerList.aspx.cs" Inherits="invtory.borowerList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>รายการเปิกใช้พัสดุ</h3>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="borower_id" DataSourceID="getborower" EmptyDataText="There are no data records to display." CssClass="table table-striped jambo_table bulk_action">
            <Columns>
                <asp:BoundField DataField="borower_id" HeaderText="รหัสการยืม" InsertVisible="False" ReadOnly="True" SortExpression="borower_id" />
                <asp:BoundField DataField="inv_id" HeaderText="รหัสพัสดุ" SortExpression="inv_id" />
                <asp:BoundField DataField="user_id" HeaderText="รหัสผู้ใช้งาน" SortExpression="user_id" />
                <asp:CommandField ButtonType="Button" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
            </Columns>
            <EmptyDataTemplate>
                ไม่พบข้อมูล
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="getborower" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [borower] WHERE [borower_id] = @original_borower_id AND (([inv_id] = @original_inv_id) OR ([inv_id] IS NULL AND @original_inv_id IS NULL)) AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL))" InsertCommand="INSERT INTO [borower] ([inv_id], [user_id]) VALUES (@inv_id, @user_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [borower]" UpdateCommand="UPDATE [borower] SET [inv_id] = @inv_id, [user_id] = @user_id WHERE [borower_id] = @original_borower_id AND (([inv_id] = @original_inv_id) OR ([inv_id] IS NULL AND @original_inv_id IS NULL)) AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_borower_id" Type="Int32" />
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="inv_id" Type="Int32" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="inv_id" Type="Int32" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="original_borower_id" Type="Int32" />
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
