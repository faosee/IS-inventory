<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userInsert.aspx.cs" Inherits="invtory.userInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">เพิ่มผู้ใช้งานระบบ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="user_id" DataSourceID="userformAdd" DefaultMode="Insert">
            <EditItemTemplate>
                user_id:
                <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_password:
                <asp:TextBox ID="user_passwordTextBox" runat="server" Text='<%# Bind("user_password") %>' />
                <br />
                user_full_name:
                <asp:TextBox ID="user_full_nameTextBox" runat="server" Text='<%# Bind("user_full_name") %>' />
                <br />
                user_lastname:
                <asp:TextBox ID="user_lastnameTextBox" runat="server" Text='<%# Bind("user_lastname") %>' />
                <br />
                department_id:
                <asp:TextBox ID="department_idTextBox" runat="server" Text='<%# Bind("department_id") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                user_type_id:
                <asp:TextBox ID="user_type_idTextBox" runat="server" Text='<%# Bind("user_type_id") %>' />
                <br />
                active_status:
                <asp:TextBox ID="active_statusTextBox" runat="server" Text='<%# Bind("active_status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                user:
                <br />
                <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                <br />
                Password:<br />
                <asp:TextBox ID="user_passwordTextBox" runat="server" Text='<%# Bind("user_password") %>' TextMode="Password" />
                <br />
                ชื่อ:<br />
                <asp:TextBox ID="user_full_nameTextBox" runat="server" Text='<%# Bind("user_full_name") %>' />
                <br />
                นามสกุล:<br />
                <asp:TextBox ID="user_lastnameTextBox" runat="server" Text='<%# Bind("user_lastname") %>' />
                <br />
                สำนักงาน:<br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="depget" DataTextField="department_name" DataValueField="department_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="depget" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [department_id], [department_name] FROM [department]"></asp:SqlDataSource>
                <br />
                อีเมล:
                <br />
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                ประเภท:<br />
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="typeGet" DataTextField="user_type" DataValueField="user_type_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="typeGet" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [user_type_id], [user_type] FROM [employeeType]"></asp:SqlDataSource>
                <br />
                สถานะ:<br />
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="statusGet" DataTextField="status" DataValueField="status_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="statusGet" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [status_id], [status] FROM [status]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" />
            </InsertItemTemplate>
            <ItemTemplate>
                user_id:
                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_password:
                <asp:Label ID="user_passwordLabel" runat="server" Text='<%# Bind("user_password") %>' />
                <br />
                user_full_name:
                <asp:Label ID="user_full_nameLabel" runat="server" Text='<%# Bind("user_full_name") %>' />
                <br />
                user_lastname:
                <asp:Label ID="user_lastnameLabel" runat="server" Text='<%# Bind("user_lastname") %>' />
                <br />
                department_id:
                <asp:Label ID="department_idLabel" runat="server" Text='<%# Bind("department_id") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                <br />
                user_type_id:
                <asp:Label ID="user_type_idLabel" runat="server" Text='<%# Bind("user_type_id") %>' />
                <br />
                active_status:
                <asp:Label ID="active_statusLabel" runat="server" Text='<%# Bind("active_status") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="userformAdd" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [employee] WHERE [user_id] = @original_user_id AND (([user_password] = @original_user_password) OR ([user_password] IS NULL AND @original_user_password IS NULL)) AND (([user_full_name] = @original_user_full_name) OR ([user_full_name] IS NULL AND @original_user_full_name IS NULL)) AND (([user_lastname] = @original_user_lastname) OR ([user_lastname] IS NULL AND @original_user_lastname IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([user_type_id] = @original_user_type_id) OR ([user_type_id] IS NULL AND @original_user_type_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [employee] ([user_id], [user_password], [user_full_name], [user_lastname], [department_id], [email], [user_type_id], [active_status]) VALUES (@user_id, @user_password, @user_full_name, @user_lastname, @department_id, @email, @user_type_id, @active_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [user_password] = @user_password, [user_full_name] = @user_full_name, [user_lastname] = @user_lastname, [department_id] = @department_id, [email] = @email, [user_type_id] = @user_type_id, [active_status] = @active_status WHERE [user_id] = @original_user_id AND (([user_password] = @original_user_password) OR ([user_password] IS NULL AND @original_user_password IS NULL)) AND (([user_full_name] = @original_user_full_name) OR ([user_full_name] IS NULL AND @original_user_full_name IS NULL)) AND (([user_lastname] = @original_user_lastname) OR ([user_lastname] IS NULL AND @original_user_lastname IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([user_type_id] = @original_user_type_id) OR ([user_type_id] IS NULL AND @original_user_type_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="String" />
                <asp:Parameter Name="original_user_password" Type="String" />
                <asp:Parameter Name="original_user_full_name" Type="String" />
                <asp:Parameter Name="original_user_lastname" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int32" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_user_type_id" Type="Int32" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
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
                <asp:Parameter Name="original_user_id" Type="String" />
                <asp:Parameter Name="original_user_password" Type="String" />
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
