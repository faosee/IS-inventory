<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reportDegeneration.aspx.cs" Inherits="invtory.reportDegeneration" %>
<%@ Register assembly="Syncfusion.EJ.Pivot, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" namespace="Syncfusion.JavaScript.Web" tagprefix="ej" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        รายงานพัสดุ<ej:PivotChart ID="PivotChart1" runat="server">
        </ej:PivotChart>
&nbsp;</form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
