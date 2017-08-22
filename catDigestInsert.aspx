<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catDigestInsert.aspx.cs" Inherits="invtory.catDigestInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">เพิ่มหมวดหมู่ย่อย
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="catDigest_id" DataSourceID="addcatDigest" DefaultMode="Insert">
        <EditItemTemplate>
            catDigest_id:
            <asp:Label ID="catDigest_idLabel1" runat="server" Text='<%# Eval("catDigest_id") %>' />
            <br />
            catDigest_name:
            <asp:TextBox ID="catDigest_nameTextBox" runat="server" Text='<%# Bind("catDigest_name") %>' />
            <br />
            catMain_id:
            <asp:TextBox ID="catMain_idTextBox" runat="server" Text='<%# Bind("catMain_id") %>' />
            <br />
            active_status:
            <asp:TextBox ID="active_statusTextBox" runat="server" Text='<%# Bind("active_status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
             หมวดหมู่หลัก:<br /> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="selectCatMain" DataTextField="catMain_name" DataValueField="catMain_id" SelectedValue='<%# Bind("catDigest_id") %>'>
             </asp:DropDownList>
             <asp:SqlDataSource ID="selectCatMain" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catMain_id], [catMain_name] FROM [categoryMain]"></asp:SqlDataSource>
             <br />
             <br />
             รหัสหมวดหมู่ย่อย:<br />
            <asp:TextBox ID="catDigest_idTextBox" runat="server" Text='<%# Bind("catDigest_id") %>' Width="255px" />
            <br />
            <br />
            ชื่อหมวดหมู่ย่อย:<br /> <asp:TextBox ID="catDigest_nameTextBox" runat="server" Text='<%# Bind("catDigest_name") %>' Width="255px" />
            <br />
            <br />

            สถานะ:<br /> 
             <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="getstatus" DataTextField="status" DataValueField="status_id">
             </asp:DropDownList>
             <asp:SqlDataSource ID="getstatus" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [status]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" />
        </InsertItemTemplate>
        <ItemTemplate>
            catDigest_id:
            <asp:Label ID="catDigest_idLabel" runat="server" Text='<%# Eval("catDigest_id") %>' />
            <br />
            catDigest_name:
            <asp:Label ID="catDigest_nameLabel" runat="server" Text='<%# Bind("catDigest_name") %>' />
            <br />
            catMain_id:
            <asp:Label ID="catMain_idLabel" runat="server" Text='<%# Bind("catMain_id") %>' />
            <br />
            active_status:
            <asp:Label ID="active_statusLabel" runat="server" Text='<%# Bind("active_status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="addcatDigest" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [categoryDigest] WHERE [catDigest_id] = @original_catDigest_id AND (([catDigest_name] = @original_catDigest_name) OR ([catDigest_name] IS NULL AND @original_catDigest_name IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [categoryDigest] ([catDigest_id], [catDigest_name], [catMain_id], [active_status]) VALUES (@catDigest_id, @catDigest_name, @catMain_id, @active_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [categoryDigest]" UpdateCommand="UPDATE [categoryDigest] SET [catDigest_name] = @catDigest_name, [catMain_id] = @catMain_id, [active_status] = @active_status WHERE [catDigest_id] = @original_catDigest_id AND (([catDigest_name] = @original_catDigest_name) OR ([catDigest_name] IS NULL AND @original_catDigest_name IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_catDigest_id" Type="String" />
                <asp:Parameter Name="original_catDigest_name" Type="String" />
                <asp:Parameter Name="original_catMain_id" Type="String" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="catDigest_id" Type="String" />
                <asp:Parameter Name="catDigest_name" Type="String" />
                <asp:Parameter Name="catMain_id" Type="String" />
                <asp:Parameter Name="active_status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="catDigest_name" Type="String" />
                <asp:Parameter Name="catMain_id" Type="String" />
                <asp:Parameter Name="active_status" Type="Int32" />
                <asp:Parameter Name="original_catDigest_id" Type="String" />
                <asp:Parameter Name="original_catDigest_name" Type="String" />
                <asp:Parameter Name="original_catMain_id" Type="String" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
