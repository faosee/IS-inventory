<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userAdd.aspx.cs" Inherits="invtory.userAdd" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>เพิ่มบัญชีผู้ใช้งาน</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="user_id" DataSourceID="adduser" DefaultMode="Insert" Width="297px">
            <EditItemTemplate>
                user_id:
                <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_name:
                <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' />
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
                   <div class="form-horizontal form-label-left">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">User</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
 <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' Width="200px" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Password</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <asp:TextBox ID="user_passwordTextBox" runat="server" Text='<%# Bind("user_password") %>' Width="200px" /> </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">ชื่อ</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <asp:TextBox ID="user_full_nameTextBox" runat="server" Text='<%# Bind("user_full_name") %>' Width="200px" /> </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">นามสกุล</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                           <asp:TextBox ID="user_lastnameTextBox" runat="server" Text='<%# Bind("user_lastname") %>' Width="200px" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">สำนัก</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="getdep" DataTextField="department_name" DataValueField="department_id" SelectedValue='<%# Bind("department_id") %>' Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="getdep" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [department_id], [department_name] FROM [department]"></asp:SqlDataSource>
         </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">อีเมล</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' Width="200px" /> </div>
                      </div>
                                            <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">ประเภท</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="getUserType" DataTextField="user_type" DataValueField="user_type_id" SelectedValue='<%# Bind("user_type_id") %>' Width="200px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="getUserType" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [user_type_id], [user_type] FROM [employeeType]"></asp:SqlDataSource>
                        </div>
                      </div>
                                            <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">สถานะ</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                           <asp:DropDownList ID="DropDownList3" runat="server" Width="100px">
                                <asp:ListItem Value="1">ใช้งาน</asp:ListItem>
                                <asp:ListItem Value="2">ปิด</asp:ListItem>
                            </asp:DropDownList> </div>
                      </div>
                                            
                      <div class="ln_solid"></div>

                      <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">


                          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" />
                          <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" />
                        </div>
                      </div>
                </div>            
                <br />
&nbsp;
            </InsertItemTemplate>
            <ItemTemplate>
                user_id:
                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_name:
                <asp:Label ID="user_nameLabel" runat="server" Text='<%# Bind("user_name") %>' />
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

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="adduser" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [employee] WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_password] = @original_user_password) OR ([user_password] IS NULL AND @original_user_password IS NULL)) AND (([user_full_name] = @original_user_full_name) OR ([user_full_name] IS NULL AND @original_user_full_name IS NULL)) AND (([user_lastname] = @original_user_lastname) OR ([user_lastname] IS NULL AND @original_user_lastname IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([user_type_id] = @original_user_type_id) OR ([user_type_id] IS NULL AND @original_user_type_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [employee] ([user_name], [user_password], [user_full_name], [user_lastname], [department_id], [email], [user_type_id], [active_status]) VALUES (@user_name, @user_password, @user_full_name, @user_lastname, @department_id, @email, @user_type_id, @active_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [user_name] = @user_name, [user_password] = @user_password, [user_full_name] = @user_full_name, [user_lastname] = @user_lastname, [department_id] = @department_id, [email] = @email, [user_type_id] = @user_type_id, [active_status] = @active_status WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_password] = @original_user_password) OR ([user_password] IS NULL AND @original_user_password IS NULL)) AND (([user_full_name] = @original_user_full_name) OR ([user_full_name] IS NULL AND @original_user_full_name IS NULL)) AND (([user_lastname] = @original_user_lastname) OR ([user_lastname] IS NULL AND @original_user_lastname IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([user_type_id] = @original_user_type_id) OR ([user_type_id] IS NULL AND @original_user_type_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_user_name" Type="String" />
                <asp:Parameter Name="original_user_password" Type="String" />
                <asp:Parameter Name="original_user_full_name" Type="String" />
                <asp:Parameter Name="original_user_lastname" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int32" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_user_type_id" Type="Int32" />
                <asp:Parameter Name="original_active_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
                <asp:Parameter Name="user_full_name" Type="String" />
                <asp:Parameter Name="user_lastname" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="user_type_id" Type="Int32" />
                <asp:Parameter Name="active_status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_password" Type="String" />
                <asp:Parameter Name="user_full_name" Type="String" />
                <asp:Parameter Name="user_lastname" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="user_type_id" Type="Int32" />
                <asp:Parameter Name="active_status" Type="Int32" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_user_name" Type="String" />
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
