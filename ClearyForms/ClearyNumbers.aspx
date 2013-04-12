<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClearyNumbers.aspx.cs" Inherits="CapstoneMainForm.ClearyForms.ClearyNumbers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 58px;
        }
        .style5
        {
            width: 35px;
        }
        .style7
        {
            width: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button ID="btnCO" runat="server" Text="Criminal Offenses" 
        onclick="btnNext1_Click" />
    <asp:Button ID="btnCHO" runat="server" Text="Criminal Hate Offenses" 
        onclick="btnNext2_Click" />
    <asp:Button ID="btnADW" runat="server" Text="Alcohol/ Drug / Weapons" 
        onclick="btnNext3_Click" />
    <asp:Button ID="btnFD" runat="server" Text="Fire/ Disaster" 
        onclick="btnNext4_Click" />
    <asp:Panel ID="Panel1" runat="server">
    <table cellpadding="2" cellspacing="3" border="2">
        <tr>
            <td>
                Reported Incidents<br />
            </td>
            <td colspan="3">
                <asp:Label ID="lblC1P1" runat="server" Text="Resident Halls"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC2P1" runat="server" Text="Total On Campus"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC3P1" runat="server" Text="Non-Campus Buildings"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC4P1" runat="server" Text="Public Property"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblP1Topic" runat="server">Criminal Offenses</asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_1P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_2P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_3P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr2_1P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr2_2P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr2_3P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr3_1P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr3_2P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr3_3P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr4_1P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr4_2P1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr4_3P1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlCrimOff" runat="server" Height="20px" Width="200px" 
                    AutoPostBack="True" onselectedindexchanged="CrimOff_SelectedIndexChanged">
                    <asp:ListItem>--Select Item--</asp:ListItem>
                    <asp:ListItem>Murder/ Non-Negligent Manslaughter</asp:ListItem>
                    <asp:ListItem>BurglaryForcible Sex Offenses</asp:ListItem>
                    <asp:ListItem>Forcible RapeNon-Forcible Sex Offenses</asp:ListItem>
                    <asp:ListItem>Robbery</asp:ListItem>
                    <asp:ListItem>Aggravated Assault</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Motor Vehicle Thefts</asp:ListItem>
                    <asp:ListItem>Arson</asp:ListItem>
                    <asp:ListItem>Negligent Manslaughter</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtOtherP1" runat="server" Width="200px" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnAddP1" runat="server" Text="Add To Report" onclick="CrimOff_Click" 
                    Visible="False" />
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C1P1" runat="server" Width="29px" Height="22px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtY1C1P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C1P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtY2C1P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C1P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtY3C1P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C2P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtY1C2P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C2P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtY2C2P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C2P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtY3C2P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C3P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtY1C3P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C3P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="txtY2C3P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C3P1" runat="server" Width="30px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="txtY3C3P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C4P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="txtY1C4P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C4P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                    runat="server" ControlToValidate="txtY2C4P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C4P1" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                    runat="server" ControlToValidate="txtY3C4P1" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Visible="false">
    <table cellpadding="2" cellspacing="3" border="2">
        <tr>
            <td>
                Reported Incidents<br />
            </td>
            <td colspan="3">
                <asp:Label ID="lblC1P2" runat="server" Text="Resident Halls"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC2P2" runat="server" Text="Total On Campus"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC3P2" runat="server" Text="Non-Campus Buildings"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC4P2" runat="server" Text="Public Property"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblP2Topic" runat="server">Criminal Hate Offenses</asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_1P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_2P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_3P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr2_1P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr2_2P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr2_3P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr3_1P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr3_2P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr3_3P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr4_1P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr4_2P2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr4_3P2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:DropDownList ID="ddlHateOff" runat="server" Height="20px" Width="200px" 
                    AutoPostBack="True" onselectedindexchanged="HateOff_SelectedIndexChanged">
                    <asp:ListItem>--Select Item--</asp:ListItem>
                    <asp:ListItem>Murder/ Non-Negligent Manslaughter</asp:ListItem>
                    <asp:ListItem>Aggravated Assault</asp:ListItem>
                    <asp:ListItem>Forcible Sex Offenses (includes forcible rape)</asp:ListItem>
                    <asp:ListItem>Forcible Rape</asp:ListItem>
                    <asp:ListItem>Arson</asp:ListItem>
                    <asp:ListItem>Negligent Manslaughter</asp:ListItem>
                    <asp:ListItem>Simple Assault</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtOtherP2" runat="server" Width="200px" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnAddP2" runat="server" Text="Add To Report" 
                    onclick="HateOff_Click" Visible="False" />
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C1P2" runat="server" Width="30px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                    runat="server" ControlToValidate="txtY1C1P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C1P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                    runat="server" ControlToValidate="txtY2C1P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C1P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                    runat="server" ControlToValidate="txtY3C1P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C2P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" 
                    runat="server" ControlToValidate="txtY1C2P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C2P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                    runat="server" ControlToValidate="txtY2C2P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C2P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                    runat="server" ControlToValidate="txtY2C2P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C3P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                    runat="server" ControlToValidate="txtY1C3P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C3P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                    runat="server" ControlToValidate="txtY2C3P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C3P2" runat="server" Width="30px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                    runat="server" ControlToValidate="txtY3C3P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C4P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator22" 
                    runat="server" ControlToValidate="txtY1C4P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C4P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator23" 
                    runat="server" ControlToValidate="txtY2C4P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C4P2" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator24" 
                    runat="server" ControlToValidate="txtY3C4P2" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" Visible="false">
    <table cellpadding="2" cellspacing="3" border="2">
        <tr>
            <td>
                Reported Incidents<br />
            </td>
            <td colspan="3">
                <asp:Label ID="lblC1P3" runat="server" 
                    Text="On-Campus, In Resident Halls Arrests"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC2P3" runat="server" Text="Total On-Campus Arrests"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblC3P3" runat="server" 
                    Text="Disiplinary Actions/ Judicial Referrals"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Non-Campus Building Arrests"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="Label2" runat="server" Text="Public Property Arrests"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblP3Topic" runat="server">Drug Alcohol and Weapons</asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr1_1P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr1_2P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr1_3P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr2_1P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr2_2P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr2_3P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr3_1P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr3_2P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr3_3P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr4_1P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr4_2P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr4_3P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr5_1P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr5_2P3" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Yr5_3P3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:DropDownList ID="ddlDAW" runat="server" Height="21px" Width="175px" 
                    AutoPostBack="True" onselectedindexchanged="DAW_SelectedIndexChanged">
                    <asp:ListItem>--Select Item--</asp:ListItem>
                    <asp:ListItem>Liquor Law Violations</asp:ListItem>
                    <asp:ListItem>Drug Abuse Violations</asp:ListItem>
                    <asp:ListItem>Weapons Possessions</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtOtherP3" runat="server" Width="175px" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnAddP3" runat="server" Text="Add To Report" 
                    onclick="DAW_Click" Visible="False" />
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY1C1P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator25" 
                    runat="server" ControlToValidate="txtY1C1P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY2C1P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator26" 
                    runat="server" ControlToValidate="txtY2C1P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY3C1P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" 
                    runat="server" ControlToValidate="txtY3C1P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY1C2P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator30" 
                    runat="server" ControlToValidate="txtY1C2P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY2C2P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator28" 
                    runat="server" ControlToValidate="txtY2C2P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY3C2P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator29" 
                    runat="server" ControlToValidate="txtY3C2P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY1C3P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator31" 
                    runat="server" ControlToValidate="txtY1C3P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY2C3P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator32" 
                    runat="server" ControlToValidate="txtY2C3P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY3C3P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator33" 
                    runat="server" ControlToValidate="txtY3C3P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY1C4P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator34" 
                    runat="server" ControlToValidate="txtY1C4P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY2C4P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator35" 
                    runat="server" ControlToValidate="txtY2C4P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY3C4P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator36" 
                    runat="server" ControlToValidate="txtY3C4P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY1C5P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator37" 
                    runat="server" ControlToValidate="txtY1C5P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY2C5P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator38" 
                    runat="server" ControlToValidate="txtY2C5P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtY3C5P3" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator39" 
                    runat="server" ControlToValidate="txtY3C5P3" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" Visible="false">
    <table cellpadding="2" cellspacing="3" border="2">
        <tr>
            <td>
                Reported Incidents<br />
            </td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblP4Topic" runat="server">Fire and Disaster</asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_1P4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_2P4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Yr1_3P4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlFireDis" runat="server" Height="20px" Width="200px" 
                    AutoPostBack="True" onselectedindexchanged="FD_SelectedIndexChanged">
                    <asp:ListItem>--Select Item--</asp:ListItem>
                    <asp:ListItem>Actual Fires on Campus</asp:ListItem>
                    <asp:ListItem>Campus Fire Drills</asp:ListItem>
                    <asp:ListItem>Disaster Drills</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtOtherP4" runat="server" 
                    Width="200px" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnAddP4" runat="server" Text="Add To Report" 
                    onclick="FD_Click" Visible="False" />
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY1C1P4" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator40" 
                    runat="server" ControlToValidate="txtY1C1P4" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY2C1P4" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator41" 
                    runat="server" ControlToValidate="txtY2C1P4" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtY3C1P4" runat="server" Width="30px">0</asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator42" 
                    runat="server" ControlToValidate="txtY3C1P4" ErrorMessage="Needs a Number" 
                    style="color: #FF0000" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>

        <br />

        <asp:Button ID="btnCreateRep" runat="server" Text="Create PDF Cleary Report" 
        onclick="btnCreateRep_Click" />
    </asp:Panel>
    <br />
</asp:Content>
