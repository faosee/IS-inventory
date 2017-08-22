<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="borowerManage.aspx.cs" Inherits="invtory.borowerManage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>จัดการเปิกใช้พัสดุ</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>เลือกประเภท</td>
                <td style="width: 193px">    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="getcatType" DataTextField="catType_name" DataValueField="catType_id" Width="200px"></asp:DropDownList>
                    <asp:SqlDataSource ID="getcatType" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catType_name], [catType_id] FROM [categoryType]"></asp:SqlDataSource>
                </td>
                <td style="width: 50px">
                    &nbsp;</td>
                <td style="width: 110px">
                   เลือกสำนัก</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="getdep" DataTextField="department_name" DataValueField="department_id" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="getdep" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [department_id], [department_name] FROM [department]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="height: 19px; width: 127px">
                    เลือหหมวดหมู่หลัก</td>
                <td style="height: 19px; width: 193px">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="getCatMain" DataTextField="catMain_name" DataValueField="catMain_id" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="getCatMain" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catMain_id], [catMain_name] FROM [categoryMain]"></asp:SqlDataSource>
                </td>
                <td style="height: 19px; width: 50px;">
                    &nbsp;</td>
                <td style="height: 19px; width: 110px;">
                    เลือกผู้ใช้</td>
                <td style="height: 19px">
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="getuser" DataTextField="user_full_name" DataValueField="user_id" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="getuser" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [user_id], [user_full_name], [user_lastname] FROM [employee]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 127px; height: 52px;">
                    เลือกหมวดหมู่ย่อย</td>
                <td style="width: 193px; height: 52px;">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="getCatDigest" DataTextField="catDigest_name" DataValueField="catDigest_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="getCatDigest" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catDigest_id], [catDigest_name] FROM [categoryDigest]"></asp:SqlDataSource>
                </td>
                <td style="height: 52px; width: 50px">&nbsp;</td>
                <td style="height: 52px; width: 110px"></td>
                <td style="height: 52px"></td>
            </tr>
            <tr>
                <td style="width: 127px">
                    เลือกรายการพัสดุ</td>
                <td style="width: 193px">
                    &nbsp;</td>
                <td style="width: 50px">&nbsp;</td>
                <td style="width: 110px">เลือกรายการผู้ใช้</td>
                <td>
                    <textarea id="TextArea2" cols="20" name="S2" rows="2"></textarea></td>
            </tr>
            <tr>
                <td style="width: 127px">
                    &nbsp;</td>
                <td style="width: 193px">
                    &nbsp;</td>
                <td style="width: 50px">&nbsp;</td>
                <td style="width: 110px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        บันทึก</form>
</asp:Content>
