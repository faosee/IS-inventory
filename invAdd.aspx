<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="invAdd.aspx.cs" Inherits="invtory.invAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">เพิ่มรายการพัสดุ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="รหัส" DataSourceID="invinsert" DefaultMode="Insert">
        <EditItemTemplate>
            รหัส:
            <asp:Label ID="รหัสLabel1" runat="server" Text='<%# Eval("รหัส") %>' />
            <br />
            ชื่อพัสดุ:
            <asp:TextBox ID="ชื่อพัสดุTextBox" runat="server" Text='<%# Bind("ชื่อพัสดุ") %>' />
            <br />         
            ประเภท:
            <asp:TextBox ID="ประเภทTextBox" runat="server" Text='<%# Bind("ประเภท") %>' />  
<br/>
หมวดหมู่หลัก:
            <asp:TextBox ID="หมวดหมู่หลักTextBox" runat="server" Text='<%# Bind("หมวดหมู่หลัก") %>' />
            <br />
            หมวดหมู่ย่อย:
            <asp:TextBox ID="หมวดหมู่ย่อยTextBox" runat="server" Text='<%# Bind("หมวดหมู่ย่อย") %>' />
            <br />
            ราคา:
            <asp:TextBox ID="ราคาTextBox" runat="server" Text='<%# Bind("ราคา") %>' />
            <br />
            ปีงบประมาณ:
            <asp:TextBox ID="ปีงบประมาณTextBox" runat="server" Text='<%# Bind("ปีงบประมาณ") %>' />
            <br />
            รายละเอียด:
            <asp:TextBox ID="รายละเอียดTextBox" runat="server" Text='<%# Bind("รายละเอียด") %>' />
            <br />
            หมายเหตุ:
            <asp:TextBox ID="หมายเหตุTextBox" runat="server" Text='<%# Bind("หมายเหตุ") %>' />
            <br />
            วันที่สร้าง:
            <asp:TextBox ID="วันที่สร้างTextBox" runat="server" Text='<%# Bind("วันที่สร้าง") %>' />
            <br />
            หมายเลขประจำเครื่อง:
            <asp:TextBox ID="หมายเลขประจำเครื่องTextBox" runat="server" Text='<%# Bind("หมายเลขประจำเครื่อง") %>' />
            <br />
            ผู้ผลิต:
            <asp:TextBox ID="ผู้ผลิตTextBox" runat="server" Text='<%# Bind("ผู้ผลิต") %>' />
            <br />
            สถานะ:
            <asp:TextBox ID="สถานะTextBox" runat="server" Text='<%# Bind("สถานะ") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
           <table>
               <tr> <td>ชื่อพัสดุ:<br /></td>
            <td><asp:TextBox ID="ชื่อพัสดุTextBox" runat="server" Text='<%# Bind("ชื่อพัสดุ") %>' /></td>
            </tr>        
            <tr><td>ประเภท:<br /></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="cattype" DataTextField="catType_name" DataValueField="catType_id" SelectedValue='<%# Bind("catType_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="cattype" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [categoryType]"></asp:SqlDataSource>
                </td>
</tr>
<tr>
<td>หมวดหมู่หลัก:<br /></td>
    <td>  
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="catMain" DataTextField="catMain_name" DataValueField="catMain_id" SelectedValue='<%# Bind("catMain_id") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="catMain" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [categoryMain]"></asp:SqlDataSource>
        <br />
    </td>
           </tr> 
           <tr>
        <td>    หมวดหมู่ย่อย:<br /> </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="catDigest_name" DataValueField="catDigest_id" SelectedValue='<%# Bind("catDigest_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catDigest_name], [catDigest_id] FROM [categoryDigest]"></asp:SqlDataSource>
                <br />
               </td>
            </tr>
               <tr>
            <td>ราคา:<br /> </td>
            <td><asp:TextBox ID="ราคาTextBox" runat="server" Text='<%# Bind("ราคา") %>' />
                <br />
                   </td>
            </tr><tr>
            <td>ปีงบประมาณ:<br /> </td>
            <td>
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="year" DataTextField="yearName" DataValueField="year_id" SelectedValue='<%# Bind("year_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="year" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [year]"></asp:SqlDataSource>
                   <br />
                   </td>
            </tr><tr>
            <td>รายละเอียด:<br /> </td>
            <td><asp:TextBox ID="รายละเอียดTextBox" runat="server" Text='<%# Bind("รายละเอียด") %>' />
                <br />
                   </td>
            </tr><tr>
            <td>หมายเหตุ:<br /> </td>
            <td><asp:TextBox ID="หมายเหตุTextBox" runat="server" Text='<%# Bind("หมายเหตุ") %>' />
                <br />
                   </td>
            </tr><tr>
            <td>วันที่สร้าง:<br /> </td>
            <td><asp:TextBox ID="วันที่สร้างTextBox" runat="server" Text='<%# Bind("วันที่สร้าง") %>' />
                <br />
                   </td>
            </tr><tr>
            <td>หมายเลขประจำเครื่อง:<br /> </td>
            <td><asp:TextBox ID="หมายเลขประจำเครื่องTextBox" runat="server" Text='<%# Bind("หมายเลขประจำเครื่อง") %>' />
                <br />
                   </td>
            </tr><tr>
            <td>ผู้ผลิต:<br /> </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="suplyer" DataTextField="supplierName" DataValueField="supplier_id" SelectedValue='<%# Bind("supplier_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="suplyer" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [supplier_id], [supplierName] FROM [supplier]"></asp:SqlDataSource>
                   <br />
                   </td>
            </tr><tr>
            <td>สถานะ:<br /> </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="Invstatus" DataTextField="invStatusName" DataValueField="invStatus_id" SelectedValue='<%# Bind("invStatus_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="Invstatus" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [inventoryStatus]"></asp:SqlDataSource>
                   <br />
                   </td>
            </tr>
               
             <tr>
                 <td>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" /></td>
        </tr></table></InsertItemTemplate>
        <ItemTemplate>
           รหัส:
            <asp:Label ID="รหัสLabel" runat="server" Text='<%# Eval("รหัส") %>' />
            <br />
            ชื่อพัสดุ:
            <asp:Label ID="ชื่อพัสดุLabel" runat="server" Text='<%# Bind("ชื่อพัสดุ") %>' />
            <br />
            หมวดหมู่หลัก:
            <asp:Label ID="หมวดหมู่หลักLabel" runat="server" Text='<%# Bind("หมวดหมู่หลัก") %>' />
            <br />
            หมวดหมู่ย่อย:
            <asp:Label ID="หมวดหมู่ย่อยLabel" runat="server" Text='<%# Bind("หมวดหมู่ย่อย") %>' />
            <br />
            ประเภท:
            <asp:Label ID="ประเภทLabel" runat="server" Text='<%# Bind("ประเภท") %>' />
            <br />
            ราคา:
            <asp:Label ID="ราคาLabel" runat="server" Text='<%# Bind("ราคา") %>' />
            <br />
            ปีงบประมาณ:
            <asp:Label ID="ปีงบประมาณLabel" runat="server" Text='<%# Bind("ปีงบประมาณ") %>' />
            <br />
            รายละเอียด:
            <asp:Label ID="รายละเอียดLabel" runat="server" Text='<%# Bind("รายละเอียด") %>' />
            <br />
            หมายเหตุ:
            <asp:Label ID="หมายเหตุLabel" runat="server" Text='<%# Bind("หมายเหตุ") %>' />
            <br />
            วันที่สร้าง:
            <asp:Label ID="วันที่สร้างLabel" runat="server" Text='<%# Bind("วันที่สร้าง") %>' />
            <br />
            หมายเลขประจำเครื่อง:
            <asp:Label ID="หมายเลขประจำเครื่องLabel" runat="server" Text='<%# Bind("หมายเลขประจำเครื่อง") %>' />
            <br />
            ผู้ผลิต:
            <asp:Label ID="ผู้ผลิตLabel" runat="server" Text='<%# Bind("ผู้ผลิต") %>' />
            <br />
            สถานะ:
            <asp:Label ID="สถานะLabel" runat="server" Text='<%# Bind("สถานะ") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="invinsert" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString2 %>" DeleteCommand="DELETE FROM [inventory] WHERE [inv_id] = @original_inv_id AND (([invName] = @original_invName) OR ([invName] IS NULL AND @original_invName IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([catDigest_id] = @original_catDigest_id) OR ([catDigest_id] IS NULL AND @original_catDigest_id IS NULL)) AND (([catType_id] = @original_catType_id) OR ([catType_id] IS NULL AND @original_catType_id IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([year_id] = @original_year_id) OR ([year_id] IS NULL AND @original_year_id IS NULL)) AND (([invDetail] = @original_invDetail) OR ([invDetail] IS NULL AND @original_invDetail IS NULL)) AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL)) AND (([createDate] = @original_createDate) OR ([createDate] IS NULL AND @original_createDate IS NULL)) AND (([serialNumber] = @original_serialNumber) OR ([serialNumber] IS NULL AND @original_serialNumber IS NULL)) AND (([supplier_id] = @original_supplier_id) OR ([supplier_id] IS NULL AND @original_supplier_id IS NULL)) AND (([invStatus_id] = @original_invStatus_id) OR ([invStatus_id] IS NULL AND @original_invStatus_id IS NULL))" InsertCommand="INSERT INTO [inventory] ([invName], [catMain_id], [catDigest_id], [catType_id], [price], [year_id], [invDetail], [Remark], [createDate], [serialNumber], [supplier_id], [invStatus_id]) VALUES (@invName, @catMain_id, @catDigest_id, @catType_id, @price, @year_id, @invDetail, @Remark, @createDate, @serialNumber, @supplier_id, @invStatus_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [inventory]" UpdateCommand="UPDATE [inventory] SET [invName] = @invName, [catMain_id] = @catMain_id, [catDigest_id] = @catDigest_id, [catType_id] = @catType_id, [price] = @price, [year_id] = @year_id, [invDetail] = @invDetail, [Remark] = @Remark, [createDate] = @createDate, [serialNumber] = @serialNumber, [supplier_id] = @supplier_id, [invStatus_id] = @invStatus_id WHERE [inv_id] = @original_inv_id AND (([invName] = @original_invName) OR ([invName] IS NULL AND @original_invName IS NULL)) AND (([catMain_id] = @original_catMain_id) OR ([catMain_id] IS NULL AND @original_catMain_id IS NULL)) AND (([catDigest_id] = @original_catDigest_id) OR ([catDigest_id] IS NULL AND @original_catDigest_id IS NULL)) AND (([catType_id] = @original_catType_id) OR ([catType_id] IS NULL AND @original_catType_id IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([year_id] = @original_year_id) OR ([year_id] IS NULL AND @original_year_id IS NULL)) AND (([invDetail] = @original_invDetail) OR ([invDetail] IS NULL AND @original_invDetail IS NULL)) AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL)) AND (([createDate] = @original_createDate) OR ([createDate] IS NULL AND @original_createDate IS NULL)) AND (([serialNumber] = @original_serialNumber) OR ([serialNumber] IS NULL AND @original_serialNumber IS NULL)) AND (([supplier_id] = @original_supplier_id) OR ([supplier_id] IS NULL AND @original_supplier_id IS NULL)) AND (([invStatus_id] = @original_invStatus_id) OR ([invStatus_id] IS NULL AND @original_invStatus_id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_inv_id" Type="Int32" />
                <asp:Parameter Name="original_invName" Type="String" />
                <asp:Parameter Name="original_catMain_id" Type="Int32" />
                <asp:Parameter Name="original_catDigest_id" Type="Int32" />
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
                <asp:Parameter Name="catDigest_id" Type="Int32" />
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
                <asp:Parameter Name="catDigest_id" Type="Int32" />
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
                <asp:Parameter Name="original_catDigest_id" Type="Int32" />
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
