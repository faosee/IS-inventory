<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="invInsert.aspx.cs" Inherits="invtory.invInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"><h3>เพิ่มรายการพัสดุ</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="inv_id" DataSourceID="invadd" DefaultMode="Insert">
            <EditItemTemplate>
                inv_id:
                <asp:Label ID="inv_idLabel1" runat="server" Text='<%# Eval("inv_id") %>' />
                <br />
                invName:
                <asp:TextBox ID="invNameTextBox" runat="server" Text='<%# Bind("invName") %>' />
                <br />
                catMain_id:
                <asp:TextBox ID="catMain_idTextBox" runat="server" Text='<%# Bind("catMain_id") %>' />
                <br />
                catDigest_id:
                <asp:TextBox ID="catDigest_idTextBox" runat="server" Text='<%# Bind("catDigest_id") %>' />
                <br />
                catType_id:
                <asp:TextBox ID="catType_idTextBox" runat="server" Text='<%# Bind("catType_id") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                year_id:
                <asp:TextBox ID="year_idTextBox" runat="server" Text='<%# Bind("year_id") %>' />
                <br />
                invDetail:
                <asp:TextBox ID="invDetailTextBox" runat="server" Text='<%# Bind("invDetail") %>' />
                <br />
                Remark:
                <asp:TextBox ID="RemarkTextBox" runat="server" Text='<%# Bind("Remark") %>' />
                <br />
                createDate:
                <asp:TextBox ID="createDateTextBox" runat="server" Text='<%# Bind("createDate") %>' />
                <br />
                serialNumber:
                <asp:TextBox ID="serialNumberTextBox" runat="server" Text='<%# Bind("serialNumber") %>' />
                <br />
                supplier_id:
                <asp:TextBox ID="supplier_idTextBox" runat="server" Text='<%# Bind("supplier_id") %>' />
                <br />
                invStatus_id:
                <asp:TextBox ID="invStatus_idTextBox" runat="server" Text='<%# Bind("invStatus_id") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ชื่อพัสดุ:<br />
                <asp:TextBox ID="invNameTextBox" runat="server" Text='<%# Bind("invName") %>' />
                <br />
                ประเภท:
                <br />
            
                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="getTypeInv" DataTextField="catType_name" DataValueField="catType_id" SelectedValue='<%# Bind("catType_id") %>'>
                </asp:DropDownList>
            
                <br/>
                <asp:SqlDataSource ID="getTypeInv" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catType_id], [catType_name] FROM [categoryType]"></asp:SqlDataSource>
                หมวดหมู่หลัก:
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="getMainInv" DataTextField="catMain_name" DataValueField="catMain_id" SelectedValue='<%# Bind("catMain_id") %>'>
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="getMainInv" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catMain_id], [catMain_name] FROM [categoryMain] "></asp:SqlDataSource>
                หมววดหมู่ย่อย:
                <br />
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="getDisInv" DataTextField="catDigest_name" DataValueField="catDigest_id" SelectedValue='<%# Bind("catDigest_id") %>'>
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="getDisInv" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catDigest_id], [catDigest_name] FROM [categoryDigest]"></asp:SqlDataSource>
                ราคา:
                <br />
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                &nbsp;บาท
                <br />
                ปีงบประมาณ:
                <br />
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="getYearInv" DataTextField="yearName" DataValueField="year_id" SelectedValue='<%# Bind("year_id") %>'>
                </asp:DropDownList><br/>
                <asp:SqlDataSource ID="getYearInv" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [year_id], [yearName] FROM [year]"></asp:SqlDataSource>
                รายละเอียด:
                <br />
                <asp:TextBox ID="invDetailTextBox" runat="server" Text='<%# Bind("invDetail") %>' Height="100px" Width="250px" TextMode="MultiLine" />
                <br />
                หมายเหตุ:
                <br />
                <asp:TextBox ID="RemarkTextBox" runat="server" Text='<%# Bind("Remark") %>' Height="100px" Width="250px" TextMode="MultiLine" />
                <br />
                วันที่ลงทะเบียน:
                <br />
                <asp:TextBox ID="createDateTextBox" runat="server" Text='<%# Bind("createDate") %>' TextMode="Date" />
                <br />
                หมายเลขประจำเครื่อง:<br />
                <asp:TextBox ID="serialNumberTextBox" runat="server" Text='<%# Bind("serialNumber") %>' />
                <br />
                ผู้ผลิต/ตัวแทนจำหน่วย:
                <br />
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="getSupplierInv" DataTextField="supplierName" DataValueField="supplier_id">
                </asp:DropDownList><br />
                <asp:SqlDataSource ID="getSupplierInv" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [supplier_id], [supplierName] FROM [supplier]"></asp:SqlDataSource>
                สถานะ:
                <br />
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="getStatusInv" DataTextField="invStatusName" DataValueField="invStatus_id">
                </asp:DropDownList><br/>
                <asp:SqlDataSource ID="getStatusInv" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [invStatus_id], [invStatusName] FROM [inventoryStatus]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" />
            </InsertItemTemplate>
            <ItemTemplate>
                inv_id:
                <asp:Label ID="inv_idLabel" runat="server" Text='<%# Eval("inv_id") %>' />
                <br />
                invName:
                <asp:Label ID="invNameLabel" runat="server" Text='<%# Bind("invName") %>' />
                <br />               
                catType_id:
                <asp:Label ID="catType_idLabel" runat="server" Text='<%# Bind("catType_id") %>' />
                <br />
                catMain_id:
                <asp:Label ID="catMain_idLabel" runat="server" Text='<%# Bind("catMain_id") %>' />
                <br />
                catDigest_id:
                <asp:Label ID="catDigest_idLabel" runat="server" Text='<%# Bind("catDigest_id") %>' />
                 <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />
                year_id:
                <asp:Label ID="year_idLabel" runat="server" Text='<%# Bind("year_id") %>' />
                <br />
                invDetail:
                <asp:Label ID="invDetailLabel" runat="server" Text='<%# Bind("invDetail") %>' />
                <br />
                Remark:
                <asp:Label ID="RemarkLabel" runat="server" Text='<%# Bind("Remark") %>' />
                <br />
                createDate:
                <asp:Label ID="createDateLabel" runat="server" Text='<%# Bind("createDate") %>' />
                <br />
                serialNumber:
                <asp:Label ID="serialNumberLabel" runat="server" Text='<%# Bind("serialNumber") %>' />
                <br />
                supplier_id:
                <asp:Label ID="supplier_idLabel" runat="server" Text='<%# Bind("supplier_id") %>' />
                <br />
                invStatus_id:
                <asp:Label ID="invStatus_idLabel" runat="server" Text='<%# Bind("invStatus_id") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="invadd" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" DeleteCommand="DELETE FROM [inventory] WHERE [inv_id] = @original_inv_id AND (([invName] = @original_invName) OR ([invName] IS NULL AND @original_invName IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([catDigest_id] = @original_catDigest_id) OR ([catDigest_id] IS NULL AND @original_catDigest_id IS NULL)) AND (([catType_id] = @original_catType_id) OR ([catType_id] IS NULL AND @original_catType_id IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([year_id] = @original_year_id) OR ([year_id] IS NULL AND @original_year_id IS NULL)) AND (([invDetail] = @original_invDetail) OR ([invDetail] IS NULL AND @original_invDetail IS NULL)) AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL)) AND (([createDate] = @original_createDate) OR ([createDate] IS NULL AND @original_createDate IS NULL)) AND (([serialNumber] = @original_serialNumber) OR ([serialNumber] IS NULL AND @original_serialNumber IS NULL)) AND (([supplier_id] = @original_supplier_id) OR ([supplier_id] IS NULL AND @original_supplier_id IS NULL)) AND (([invStatus_id] = @original_invStatus_id) OR ([invStatus_id] IS NULL AND @original_invStatus_id IS NULL))" InsertCommand="INSERT INTO [inventory] ([invName], [catMain_id], [catDigest_id], [catType_id], [price], [year_id], [invDetail], [Remark], [createDate], [serialNumber], [supplier_id], [invStatus_id]) VALUES (@invName, @catMain_id, @catDigest_id, @catType_id, @price, @year_id, @invDetail, @Remark, @createDate, @serialNumber, @supplier_id, @invStatus_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [inventory]" UpdateCommand="UPDATE [inventory] SET [invName] = @invName, [catMain_id] = @catMain_id, [catDigest_id] = @catDigest_id, [catType_id] = @catType_id, [price] = @price, [year_id] = @year_id, [invDetail] = @invDetail, [Remark] = @Remark, [createDate] = @createDate, [serialNumber] = @serialNumber, [supplier_id] = @supplier_id, [invStatus_id] = @invStatus_id WHERE [inv_id] = @original_inv_id AND (([invName] = @original_invName) OR ([invName] IS NULL AND @original_invName IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([catDigest_id] = @original_catDigest_id) OR ([catDigest_id] IS NULL AND @original_catDigest_id IS NULL)) AND (([catType_id] = @original_catType_id) OR ([catType_id] IS NULL AND @original_catType_id IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([year_id] = @original_year_id) OR ([year_id] IS NULL AND @original_year_id IS NULL)) AND (([invDetail] = @original_invDetail) OR ([invDetail] IS NULL AND @original_invDetail IS NULL)) AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL)) AND (([createDate] = @original_createDate) OR ([createDate] IS NULL AND @original_createDate IS NULL)) AND (([serialNumber] = @original_serialNumber) OR ([serialNumber] IS NULL AND @original_serialNumber IS NULL)) AND (([supplier_id] = @original_supplier_id) OR ([supplier_id] IS NULL AND @original_supplier_id IS NULL)) AND (([invStatus_id] = @original_invStatus_id) OR ([invStatus_id] IS NULL AND @original_invStatus_id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_invName" Type="String" />
                <asp:Parameter Name="original_catMain_id" Type="Int32" />
                <asp:Parameter Name="original_catDigest_id" Type="String" />
                <asp:Parameter Name="original_catType_id" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_year_id" Type="Int32" />
                <asp:Parameter Name="original_invDetail" Type="String" />
                <asp:Parameter Name="original_Remark" Type="String" />
                <asp:Parameter Name="original_createDate" Type="String" />
                <asp:Parameter Name="original_serialNumber" Type="String" />
                <asp:Parameter Name="original_supplier_id" Type="Int32" />
                <asp:Parameter Name="original_invStatus_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="invName" Type="String" />
                <asp:Parameter Name="catMain_id" Type="Int32" />
                <asp:Parameter Name="catDigest_id" Type="String" />
                <asp:Parameter Name="catType_id" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="year_id" Type="Int32" />
                <asp:Parameter Name="invDetail" Type="String" />
                <asp:Parameter Name="Remark" Type="String" />
                <asp:Parameter Name="createDate" Type="String" />
                <asp:Parameter Name="serialNumber" Type="String" />
                <asp:Parameter Name="supplier_id" Type="Int32" />
                <asp:Parameter Name="invStatus_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="invName" Type="String" />
                <asp:Parameter Name="catMain_id" Type="Int32" />
                <asp:Parameter Name="catDigest_id" Type="String" />
                <asp:Parameter Name="catType_id" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="year_id" Type="Int32" />
                <asp:Parameter Name="invDetail" Type="String" />
                <asp:Parameter Name="Remark" Type="String" />
                <asp:Parameter Name="createDate" Type="String" />
                <asp:Parameter Name="serialNumber" Type="String" />
                <asp:Parameter Name="supplier_id" Type="Int32" />
                <asp:Parameter Name="invStatus_id" Type="Int32" />
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_invName" Type="String" />
                <asp:Parameter Name="original_catMain_id" Type="Int32" />
                <asp:Parameter Name="original_catDigest_id" Type="String" />
                <asp:Parameter Name="original_catType_id" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_year_id" Type="Int32" />
                <asp:Parameter Name="original_invDetail" Type="String" />
                <asp:Parameter Name="original_Remark" Type="String" />
                <asp:Parameter Name="original_createDate" Type="String" />
                <asp:Parameter Name="original_serialNumber" Type="String" />
                <asp:Parameter Name="original_supplier_id" Type="Int32" />
                <asp:Parameter Name="original_invStatus_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
