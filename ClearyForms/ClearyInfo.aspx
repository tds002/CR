<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClearyInfo.aspx.cs" Inherits="CapstoneMainForm.ClearyForms.ClearyStats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 84px;
        }
        .style3
        {
            width: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnClrPol" runat="server" Text="Cleary Policy" 
        onclick="btnNext1_Click" />
    <asp:Button ID="btnClrAval" runat="server" Text="Cleary Avalability" 
        onclick="btnNext2_Click" />
    <asp:Button ID="btnClrProc" runat="server" Text="Cleary Procedures" 
        onclick="btnNext3_Click" />
    <asp:Panel ID="Panel1" runat="server" Visible="true">
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblPolRepCmSt" runat="server" 
                        Text="Policy for Reporting the Annual Disclosure of Crime Statistics"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Description:</td>
                <td>
                    <asp:TextBox ID="txtPolRepCmStMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" ontextchanged="Textbox_TextChanged" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="PolRepCmStVal" runat="server" 
                        ControlToValidate="txtPolRepCmStMain" ErrorMessage="Please Supply Main Details" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Notes: </td>
                <td>
                    <asp:TextBox ID="txtPolRepCmStNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnNext2" runat="server" Text="Next" onclick="btnNext2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false">
        <table style="width:100%;">
            <tr>
                <td class="style3">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblAvalSecRep" runat="server" 
                        Text="Availability of the Annual Security Report"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Description:</td>
                <td>
                    <asp:TextBox ID="txtAvalSecRepMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="AvalSecRepVal" runat="server" 
                        ControlToValidate="txtAvalSecRepMain" ErrorMessage="Please Supply Main Details" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Notes:</td>
                <td>
                    <asp:TextBox ID="txtAvalSecRepNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnBack1" runat="server" Text="Back" onclick="btnNext1_Click" />
                    <asp:Button ID="btnNext3" runat="server" Text="Next" onclick="btnNext3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="false">
        <table style="width:100%;">
            <tr>
                <td class="style3">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblGenProcRepCmEm" runat="server" 
                        Text="General Procedures for Reporting a Crime or Emergency"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Procedures:</td>
                <td>
                    <asp:TextBox ID="txtGenProcRepCmEmMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="GenProcRepCmEmVal" runat="server" 
                        ControlToValidate="txtGenProcRepCmEmMain" 
                        ErrorMessage="Please Supply Main Details" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Notes:</td>
                <td>
                    <asp:TextBox ID="txtGenProcRepCmEmNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblSexAssaultProc" runat="server" 
                        Text="Sexual Assault Procesures, Aggrivated Assault Procedures"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Procedures:</td>
                <td>
                    <asp:TextBox ID="txtSexAssaultProcMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="SexAssaultProcVal" runat="server" 
                        ControlToValidate="txtSexAssaultProcMain" 
                        ErrorMessage="Please Supply Main Details" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Notes:</td>
                <td>
                    <asp:TextBox ID="txtSexAssaultProcNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblMissingProc" runat="server" 
                        Text="Missing Person Procedures"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Procedures:</td>
                <td>
                    <asp:TextBox ID="txtMissingProcMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="MissingProcVal" runat="server" 
                        ErrorMessage="Please Supply Main Details" style="color: #FF0000" 
                        ControlToValidate="txtMissingProcMain"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Notes:</td>
                <td>
                    <asp:TextBox ID="txtMissingProcNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblSexMurdRob" runat="server" 
                        
                        
                        Text="Non-Forible Sexual Offense Procedures, Murder and Non-Negligent Manslaughter Procesures, Negligent Manslaughter Procedures, Robbery Procedures, Burglary Procedures, Motor Vehicle Theft Procedures, Arson Procedures"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Procedures:</td>
                <td>
                    <asp:TextBox ID="txtSexMurdRobMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="SexMurdRobVal" runat="server" 
                        ControlToValidate="txtSexMurdRobMain" ErrorMessage="Please Supply Main Details" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Notes:</td>
                <td>
                    <asp:TextBox ID="txtSexMurdRobNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Add to Report:</td>
                <td>
                    <asp:Label ID="lblCampTele" runat="server" 
                        
                        Text="Campus Telephones"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Procedures:</td>
                <td>
                    <asp:TextBox ID="txtCampTeleMain" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="CampTeleVal" runat="server" 
                        ControlToValidate="txtCampTeleMain" ErrorMessage="Please Supply Main Details" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Notes:</td>
                <td>
                    <asp:TextBox ID="txtCampTeleNotes" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="650px" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnBack2" runat="server" Text="Back" 
                        onclick="btnNext2_Click" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnStatsReport" runat="server" Text="Continue" 
                        onclick="btnStatsReport_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>
    <br />
    <br />
</asp:Content>
