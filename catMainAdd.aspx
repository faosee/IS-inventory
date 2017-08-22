<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catMainAdd.aspx.cs" Inherits="invtory.catMainAdd" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>เพิ่มรายการหมวดหมู่</h3>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="catMain_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" AllowPaging="True">
            <EditItemTemplate>
                catMain_id:
                <asp:Label ID="catMain_idLabel1" runat="server" Text='<%# Eval("catMain_id") %>' />
                <br />
                catMain_name:
                <asp:TextBox ID="catMain_nameTextBox" runat="server" Text='<%# Bind("catMain_name") %>' />
                <br />
                active_status:
                <asp:TextBox ID="active_statusTextBox" runat="server" Text='<%# Bind("active_status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <HeaderTemplate>
                เพิ่มรายการหมวดหมู่
            </HeaderTemplate>
            <InsertItemTemplate>
 <table style="width:100%;">
                    <tr>
                        <td style="text-align: right">รหัสหมวดหมู่:</td>
                        <td> <asp:TextBox ID="catMain_idTextBox" runat="server" Text='<%# Bind("catMain_id") %>' /></td>
                    </tr>
                    <tr>
                        <td style="text-align: right">ชื่อหมวดหมู่:</td>
                        <td><asp:TextBox ID="catMain_nameTextBox" runat="server" Text='<%# Bind("catMain_name") %>' /></td>
                    </tr>
                    <tr>
                        <td style="text-align: right">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                                        <tr>
                        <td style="text-align: right">&nbsp;</td>
                        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="บันทึก" />
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="ยกเลิก" /></td>
                    </tr>
                </table>
                <br />
            </InsertItemTemplate>
            <ItemTemplate>
                catMain_id:
                <asp:Label ID="catMain_idLabel" runat="server" Text='<%# Eval("catMain_id") %>' />
                <br />
                catMain_name:
                <asp:Label ID="catMain_nameLabel" runat="server" Text='<%# Bind("catMain_name") %>' />
                <br />
                active_status:
                <asp:Label ID="active_statusLabel" runat="server" Text='<%# Bind("active_status") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stock_inventoryConnectionString1 %>" SelectCommand="SELECT * FROM [categoryMain]"></asp:SqlDataSource>
    </form>
</asp:Content>
