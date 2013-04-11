<%@ Page Title="Cleary Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="CapstoneMainForm.ClearyForms.Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 302px;
    }
    .style2
    {
        width: 255px;
    }
        .style3
        {
            width: 255px;
            height: 27px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            width: 302px;
            height: 27px;
        }
        .style6
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table>
        <tr>
            <td class="style2">
                Full Name:</td>
            <td>
                <asp:TextBox ID="FullName" runat="server" Height="22px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="FullNameVal" runat="server" 
                    ControlToValidate="FullName" ErrorMessage="Enter Your Full Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                College/ University Name:</td>
            <td>
                <asp:TextBox ID="ColUnName" runat="server"
                    Height="22px" Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="ColUnVal" runat="server" 
                    ControlToValidate="ColUnName" ErrorMessage="Enter a College/ University" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Department Type:&nbsp; </td>
            <td>
                <asp:DropDownList ID="DeptType" runat="server" Height="21px" Width="205px">
                    <asp:ListItem>--Please Select--</asp:ListItem>
                    <asp:ListItem>Police Department</asp:ListItem>
                    <asp:ListItem>Campus Security</asp:ListItem>
                    <asp:ListItem>None</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="DeptTypeVal" runat="server" 
                    ControlToValidate="DeptType" 
                    ErrorMessage="Select a Department Type" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-mail:</td>
            <td>
                <asp:TextBox ID="EMail" runat="server" Height="22px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="EmailVal" runat="server" 
                    ControlToValidate="EMail" ErrorMessage="Enter an E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Current Year:</td>
            <td>
                <asp:Label ID="CurrentYear" runat="server"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Cleary Calandar Year:</td>
            <td>
                <asp:Label ID="CalYear" runat="server"></asp:Label>
                </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Campus Radio Alert System:</td>
            <td>
                <asp:TextBox ID="RadioAlert" runat="server" Width="200px"></asp:TextBox>
                </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RadioVal" runat="server" 
                    ControlToValidate="RadioAlert" 
                    ErrorMessage="Enter the Campus Alert System Name" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Campus Department Location:</td>
            <td>
                <asp:TextBox ID="CampDeptLoc" runat="server" Width="200px"></asp:TextBox>
                </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="CamDeptLocVal" runat="server" 
                    ErrorMessage="Enter Department Location" style="color: #FF0000" 
                    ControlToValidate="CampDeptLoc"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <hr />
            </td>
            <td>
                <hr />
            </td>
            <td class="style1">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Street Address:</td>
            <td>
                <asp:TextBox ID="StreetAddress" runat="server" 
                    Height="22px" Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="StreetVal" runat="server" 
                    ControlToValidate="StreetAddress" ErrorMessage="Enter a Street Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City:</td>
            <td>
                <asp:TextBox ID="City" runat="server" Height="22px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="CityVal" runat="server" 
                    ControlToValidate="City" ErrorMessage="Enter a City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                State:</td>
            <td>
                <asp:DropDownList ID="State" runat="server" Height="21px" Width="205px">
                    <asp:ListItem Value="0">---Please Select---</asp:ListItem>
                    <asp:ListItem>Alabama</asp:ListItem>
                    <asp:ListItem>Alaska</asp:ListItem>
                    <asp:ListItem>Arizona</asp:ListItem>
                    <asp:ListItem>Arkansas</asp:ListItem>
                    <asp:ListItem>California</asp:ListItem>
                    <asp:ListItem>Colorado</asp:ListItem>
                    <asp:ListItem>Connecticut</asp:ListItem>
                    <asp:ListItem>Delaware</asp:ListItem>
                    <asp:ListItem>District of Columbia</asp:ListItem>
                    <asp:ListItem>Florida</asp:ListItem>
                    <asp:ListItem>Georgia</asp:ListItem>
                    <asp:ListItem>Hawaii</asp:ListItem>
                    <asp:ListItem>Idaho</asp:ListItem>
                    <asp:ListItem>Illinois</asp:ListItem>
                    <asp:ListItem>Indiana</asp:ListItem>
                    <asp:ListItem>Iowa</asp:ListItem>
                    <asp:ListItem>Kansas</asp:ListItem>
                    <asp:ListItem>Kentucky</asp:ListItem>
                    <asp:ListItem>Louisiana</asp:ListItem>
                    <asp:ListItem>Maine</asp:ListItem>
                    <asp:ListItem>Maryland</asp:ListItem>
                    <asp:ListItem>Massachusetts</asp:ListItem>
                    <asp:ListItem>Michigan</asp:ListItem>
                    <asp:ListItem>Minnesota</asp:ListItem>
                    <asp:ListItem>Mississippi</asp:ListItem>
                    <asp:ListItem>Missouri</asp:ListItem>
                    <asp:ListItem>Montana</asp:ListItem>
                    <asp:ListItem>Nebraska</asp:ListItem>
                    <asp:ListItem>Nevada</asp:ListItem>
                    <asp:ListItem>New Hampshire</asp:ListItem>
                    <asp:ListItem>New Jersey</asp:ListItem>
                    <asp:ListItem>New Mexico</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                    <asp:ListItem>North Carolina</asp:ListItem>
                    <asp:ListItem>North Dakota</asp:ListItem>
                    <asp:ListItem>Ohio</asp:ListItem>
                    <asp:ListItem>Oklahoma</asp:ListItem>
                    <asp:ListItem>Oregon</asp:ListItem>
                    <asp:ListItem>Pennsylvania</asp:ListItem>
                    <asp:ListItem>Rhode Island</asp:ListItem>
                    <asp:ListItem>South Carolina</asp:ListItem>
                    <asp:ListItem>South Dakota</asp:ListItem>
                    <asp:ListItem>Tennessee</asp:ListItem>
                    <asp:ListItem>Texas</asp:ListItem>
                    <asp:ListItem>Utah</asp:ListItem>
                    <asp:ListItem>Vermont</asp:ListItem>
                    <asp:ListItem>Virginia</asp:ListItem>
                    <asp:ListItem>Washington</asp:ListItem>
                    <asp:ListItem>West Virginia</asp:ListItem>
                    <asp:ListItem>Wisconsin</asp:ListItem>
                    <asp:ListItem>Wyoming</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="StateVal" runat="server" 
                    ControlToValidate="State" ErrorMessage="Select a State" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Zip Code::</td>
            <td>
                <asp:TextBox ID="ZipCode" runat="server" Height="22px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:Label ID="Warning" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                County:</td>
            <td>
                <asp:TextBox ID="County" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="CountyVal" runat="server" 
                    ControlToValidate="County" ErrorMessage="Enter a County" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <hr />
            </td>
            <td>
                <hr />
            </td>
            <td class="style1">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Title IX &amp; Compliance Officer Full Name: </td>
            <td>
                <asp:TextBox ID="TIXName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="TIXNVal" runat="server" 
                    ControlToValidate="TIXName" 
                    ErrorMessage="Enter the Title IX &amp; Comliance Officer Name" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Title IX &amp; Compliance Officer Phone Number: </td>
            <td>
                <asp:TextBox ID="TIXNumb" runat="server" Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="TIXPVal" runat="server" 
                    ControlToValidate="TIXNumb" 
                    ErrorMessage="Enter the Title IX &amp; Comliance Officer Phone Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Title IX &amp; Compliance Officer Location</td>
            <td>
                <asp:TextBox ID="TIXLoc" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="TIXLVal" runat="server" 
                    ControlToValidate="TIXLoc" 
                    ErrorMessage="Enter the Title IX &amp; Compliance Officer Office Location" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <hr />
            </td>
            <td>
                <hr />
            </td>
            <td class="style1">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Campus
                Emergency Phone Number:</td>
            <td>
                <asp:TextBox ID="CamEmNum" runat="server" Height="22px" 
                    Width="200px">911</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="EmNumVal" runat="server" 
                    ControlToValidate="CamEmNum" ErrorMessage="Enter Campus Emergency Phone Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Campus
                Non-Emergency Phone Number: </td>
            <td>
                <asp:TextBox ID="CamNonEmNum" runat="server" Height="22px" 
                    Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="NonEmNumVal" runat="server" 
                    ControlToValidate="CamNonEmNum" 
                    ErrorMessage="Enter Campus Non-Emergency Phone Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City Fire Department Phone Number:</td>
            <td>
                <asp:TextBox ID="CityFireNumb" runat="server" Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="FireDeptNumVal" runat="server" 
                    ControlToValidate="CityFireNumb" 
                    ErrorMessage="Enter City Fire Department Phone Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Student Life Conseling Service Phone Number: </td>
            <td>
                <asp:TextBox ID="StudLifeNumb" runat="server" Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="StudLifeNumVal" runat="server" 
                    ControlToValidate="StudLifeNumb" 
                    ErrorMessage="Enter Student Life Conseling Service Phone Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                City Police Phone Number:</td>
            <td class="style4">
                <asp:TextBox ID="CityPolNum" runat="server" Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="CityPolNumVal" runat="server" 
                    ControlToValidate="CityPolNum" ErrorMessage="Enter City Police Phone Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                County Sherrif Department Phone Number:</td>
            <td>
                <asp:TextBox ID="CountSherNum" runat="server" Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="CountSherNumVal" runat="server" 
                    ControlToValidate="CountSherNum" ErrorMessage="Enter Sherrif Department Number" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <hr />
            </td>
            <td>
                <hr />
            </td>
            <td class="style1">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                City Hospital Name:</td>
            <td>
                <asp:TextBox ID="HospName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="HospNameVal" runat="server" 
                    ControlToValidate="HospName" CssClass="style6" 
                    ErrorMessage="Enter the City Hospital Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City Hospital Phone Number:</td>
            <td>
                <asp:TextBox ID="HospPhone" runat="server" Width="200px">(000) 000-0000</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="HospPhoneVal" runat="server" 
                    ControlToValidate="HospPhone" CssClass="style6" 
                    ErrorMessage="Enter the City Hospital Location"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <hr />
            </td>
            <td>
                <hr />
            </td>
            <td class="style1">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Campus Police URL:</td>
            <td>
                <asp:TextBox ID="CamPolURL" runat="server" Width="200px">http://</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="PolURLVal" runat="server" 
                    ControlToValidate="CamPolURL" ErrorMessage="Enter Campus Police URL" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Student Handbook URL:</td>
            <td>
                <asp:TextBox ID="StudHandURL" runat="server" Width="200px">http://</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="StudHandURLVal" runat="server" 
                    ControlToValidate="StudHandURL" ErrorMessage="Enter Student Handbook URL" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Cleary Report URL:</td>
            <td>
                <asp:TextBox ID="ClrReportURL" runat="server" Width="200px">http://</asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="ClrReportURLVal" runat="server" 
                    ControlToValidate="CamPolURL" 
                    ErrorMessage="Enter the URL for the Cleary Report" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <hr />
            </td>
            <td>
                <hr />
            </td>
            <td class="style1">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                About the College/ University:</td>
            <td>
                <asp:TextBox ID="About" runat="server" Height="143px" 
                    TextMode="MultiLine" Width="328px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="AboutVal" runat="server" 
                    ControlToValidate="About" ErrorMessage="Please Fill In Info About School" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Department
                Motto:</td>
            <td>
                <asp:TextBox ID="Motto" runat="server" Height="143px" 
                    Width="328px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="MottoVal" runat="server" 
                    ControlToValidate="Motto" ErrorMessage="Enter Department Motto" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td\>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td>
                <asp:Button ID="Submit" runat="server" Text="Continue" Width="107px" 
                    onclick="Submit_Click" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        </table>

</asp:Content>
