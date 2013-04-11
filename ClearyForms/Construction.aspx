<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Construction.aspx.cs" Inherits="CapstoneMainForm.ClearyForms.construction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        This page is still under Construction.</p>
    <p>
        Please return at another time or contact the application admin.</p>
    <p>
        <asp:Button ID="btnReturn" runat="server" onclick="btnReturn_Click" 
            Text="Survey" />
    </p>
</asp:Content>
