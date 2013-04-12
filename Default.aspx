<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapstoneMainForm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" 
        Text="Welcome Click this button to continue"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Continue" runat="server" onclick="Continue_Click" 
        Text="Continue" />
</asp:Content>
