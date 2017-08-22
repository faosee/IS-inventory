<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catList.aspx.cs" Inherits="invtory.catList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <h3>รายการหมวดหมู่</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
<div class="row">
              <!-- form input mask -->
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>หมวดหมู่หลัก</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="catMain_id" DataSourceID="getMainList" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" CssClass="table table-striped jambo_table bulk_action">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:BoundField DataField="catMain_id" HeaderText="รหัสหมวดหมู่หลัก" ReadOnly="True" SortExpression="catMain_id" />
                              <asp:BoundField DataField="catMain_name" HeaderText="ชื่อหมวดหมู่หลัก" SortExpression="catMain_name" />
                              <asp:BoundField DataField="active_status" HeaderText="สถานะ" SortExpression="active_status" />
                              <asp:CommandField ButtonType="Button" EditText="แก้ไข" ShowCancelButton="False" ShowEditButton="True" />
                          </Columns>
                          <EditRowStyle BackColor="#999999" />
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

                      
                      
                      
                      
                      
                      
                      <asp:SqlDataSource ID="getMainList" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [categoryMain]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [categoryMain] WHERE [catMain_id] = @original_catMain_id AND (([catMain_name] = @original_catMain_name) OR ([catMain_name] IS NULL AND @original_catMain_name IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [categoryMain] ([catMain_id], [catMain_name], [active_status]) VALUES (@catMain_id, @catMain_name, @active_status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [categoryMain] SET [catMain_name] = @catMain_name, [active_status] = @active_status WHERE [catMain_id] = @original_catMain_id AND (([catMain_name] = @original_catMain_name) OR ([catMain_name] IS NULL AND @original_catMain_name IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
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

                      
                      
                      
                      
                      
                      
                      <div class="ln_solid"></div>
                  </div>
                </div>
              </div>
              <!-- /form input mask -->

              <!-- form color picker -->
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>หมวดหมู่ย่อย</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                      <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="catDigest_id" DataSourceID="getDigestList" ForeColor="#333333" GridLines="None" CssClass="table table-striped jambo_table bulk_action" AllowCustomPaging="True" EmptyDataText="ไม่พบข้อมูล" EnableSortingAndPagingCallbacks="True" ShowFooter="True" ShowHeaderWhenEmpty="True">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:BoundField DataField="catMain_id" HeaderText="รหัสหมวดหมู่หลัก" SortExpression="catMain_id" />
                              <asp:BoundField DataField="catDigest_id" HeaderText="รหัสหมวดหมู่ย่อย" SortExpression="catDigest_id" NullDisplayText="ไม่ได้กำหนด" />
                              <asp:BoundField DataField="catDigest_name" HeaderText="ชื่อหมวดหมู่ย่อย" SortExpression="catDigest_name" />
                              <asp:BoundField DataField="active_status" HeaderText="สถานะ" SortExpression="active_status" />
                              <asp:CommandField ButtonType="Button" EditText="แก้ไข" ShowEditButton="True" />
                          </Columns>
                          <EditRowStyle BackColor="#999999" />
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
                      
                      <asp:SqlDataSource ID="getDigestList" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [categoryDigest]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [categoryDigest] WHERE [catDigest_id] = @original_catDigest_id AND (([catDigest_name] = @original_catDigest_name) OR ([catDigest_name] IS NULL AND @original_catDigest_name IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))" InsertCommand="INSERT INTO [categoryDigest] ([catDigest_id], [catDigest_name], [catMain_id], [active_status]) VALUES (@catDigest_id, @catDigest_name, @catMain_id, @active_status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [categoryDigest] SET [catDigest_name] = @catDigest_name, [catMain_id] = @catMain_id, [active_status] = @active_status WHERE [catDigest_id] = @original_catDigest_id AND (([catDigest_name] = @original_catDigest_name) OR ([catDigest_name] IS NULL AND @original_catDigest_name IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([active_status] = @original_active_status) OR ([active_status] IS NULL AND @original_active_status IS NULL))">
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
                      
                      <div class="ln_solid"></div>
                  </div>
                </div>
              </div>
              <!-- /form color picker -->

           
            </div>
    </form>
</asp:Content>
