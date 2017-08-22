<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catDigestAdd.aspx.cs" Inherits="invtory.catDigestAdd" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>เพิ่มหมวดหมู่ย่อย</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table class="form-horizontal form-label-left">
            <tr>
                <td style="width: 126px">หมวดหมู่หลัก: </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="getCatMain" DataTextField="catMain_name" DataValueField="catMain_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="getCatMain" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catMain_id], [catMain_name] FROM [categoryMain]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 126px">รหัสหมวดหมู่ย่อย:</td>
                <td><asp:TextBox ID="catDigest_idTextBox" runat="server" Text='<%# Bind("catDigest_id") %>' />
                </td>
            </tr>
            <tr>
                <td style="width: 126px">ชื่อหมวดหมู่ย่อย:</td>
                <td>
                    <asp:TextBox ID="catDigest_nameTextBox" runat="server" Text='<%# Bind("catDigest_name") %>' />
                </td>
            </tr>
        </table>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="catDigest_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
            catMain_id:
                <asp:TextBox ID="catMain_idTextBox" runat="server" Text='<%# Bind("catMain_id") %>' />
                <br />
            catDigest_name:
                <asp:TextBox ID="catDigest_nameTextBox" runat="server" Text='<%# Bind("catDigest_name") %>' />
                <br />
            catDigest_id:
                <asp:Label ID="catDigest_idLabel1" runat="server" Text='<%# Eval("catDigest_id") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
            &nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" OnClick="InsertButton_Click" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" />
            </InsertItemTemplate>
            <ItemTemplate>
            หมวดหมู่หลัก:
                <asp:Label ID="catMain_idLabel" runat="server" Text='<%# Bind("catMain_id") %>' />
                <br />
            ชื่อหมวดหมู่ย่อย:
                <asp:Label ID="catDigest_nameLabel" runat="server" Text='<%# Bind("catDigest_name") %>' />
                <br />
            รหัสหมวดหมู่ย่อย:
                <asp:Label ID="catDigest_idLabel" runat="server" Text='<%# Eval("catDigest_id") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT [catMain_id], [catDigest_name], [catDigest_id] FROM [categoryDigest]"></asp:SqlDataSource>
    </form>
</asp:Content>
