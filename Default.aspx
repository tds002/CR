<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapstoneMainForm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    Log in and Subscribe for for $100.00 before continuing:<br />
    <br />
    <script 
    data-callback="http://notes.marietta.edu:8028/mcsec/ClearyForms/Survey.aspx" 
    data-period="Y" 
    data-recurrence="1" 
    data-amount="100.00" 
    data-name="ClearyReport" 
    data-button="subscribe" src="Scripts/JScript-PaypalBtn.js?merchant=ACDCLive33@yahoo.com"
></script>
<br />
<br />
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Continue_Click" />
</asp:Content>
