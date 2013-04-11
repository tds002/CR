<%@ Page Title="Cleary Wizard" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Wizard.aspx.cs" Inherits="CapstoneMainForm._Default" 
    MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Button ID="btnSexual" runat="server" onclick="btnNext1_Click" 
        Text="Sexually Related" />
    <asp:Button ID="btnShoot" runat="server" onclick="btnNext2_Click" 
        Text="Active Shooter" />
    <asp:Button ID="btnAlcDrug" runat="server" onclick="btnNext3_Click" 
        Text="Alcohol/ Drug Use" />
    <asp:Button ID="btnWeather" runat="server" onclick="btnNext4_Click" 
        Text="Weather Emergencies" />
    <asp:Button ID="btnFire" runat="server" onclick="btnNext5_Click" 
        Text="Fire Information" />
    <br />
            <asp:Panel ID="Panel1" runat="server" Visible="True">
            <table cellpadding="2" cellspacing="3">
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBRapeSexAssault" runat="server" 
                            Text="Rape and Sexual Assault"/>
                    </td>
                    <td>
                        <asp:CheckBox ID="CBRapeSexAssaultVic" runat="server" 
                            Text="Rape and Sexual Assault Victims" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtRapeSexAssaultDes" runat="server" Height="200px" 
                        TextMode="MultiLine" Width="400px" 
                            ontextchanged="Textbox_TextChanged" AutoPostBack="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRapeSexAssaultVicDes" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         Procedure:</td>
                    <td>
                        
                        <asp:TextBox ID="txtRapeSexAssaultPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtRapeSexAssaultVicPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtRapeSexAssaultGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRapeSexAssaultVicGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBSexOffReg" runat="server" 
                            Text="Sex Offender Registration" />
                    </td>
                    <td class="style2">
                        <asp:CheckBox ID="CBAssault" runat="server" 
                            Text="Assault" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtSexOffRegDes" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAssaultDes" runat="server" Height="200px" 
                            style="margin-right: 0px" TextMode="MultiLine" Width="400px" 
                            AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtSexOffRegPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAssaultPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtSexOffRegGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAssaultGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td class="style2">
                        <asp:CheckBox ID="CBExVoy" runat="server" Text="Exibitionism and Voyeurism" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBPhone" runat="server" 
                            Text="Obscene and Harrassing Phone Calls" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtExVoyDes" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneDes" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtExVoyPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhonePrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtExVoyGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td class="style2">
                        <asp:CheckBox ID="CBOtherSex" runat="server" 
                            Text="Other Sex Crimes" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtOtherSexDes" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtOtherSexPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtOtherSexGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnNext2" runat="server" onclick="btnNext2_Click" Text="Next" 
                            Width="60px" Height="30px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
    </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table cellpadding="2" cellspacing="3">
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBSafeArmedSubject" runat="server" 
                            Text="Safety Guidelines for Armed Subjects, Active Shooter Situation" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBShootOutsideBld" runat="server" 
                            Text="Active Shooter Outside your Building" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtSafeArmedSubjectDes" runat="server" Height="200px" 
                        TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtShootOutsideBldDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         Procedure:</td>
                    <td>
                        
                        <asp:TextBox ID="txtSafeArmedSubjectPrec" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtShootOutsideBldPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtSafeArmedSubjectGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtShootOutsideBldGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBShootSmBld" runat="server" 
                            Text="Active Shooter is in the Same Building as you" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBShootInOff" runat="server" 
                            Text="Active shooter is in your office or classroom" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtShootSmBldDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtShootInOffDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtShootSmBldPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtShootInOffPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtShootSmBldGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtShootInOffGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBPolRes" runat="server" 
                            Text="What to expect from responding police" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBTheft" runat="server" 
                            Text="Theft" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtPolResDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTheftDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtPolResPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTheftPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtPolResGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTheftGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBIdTheft" runat="server" Text="Identity Theft" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtIdTheftDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtIdTheftPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtIdTheftGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnBack1" runat="server" Height="29px" onclick="btnNext1_Click" 
                            Text="Back" Width="60px" />
                        <asp:Button ID="btnNext3" runat="server" Height="30px" onclick="btnNext3_Click" 
                            Text="Next" Width="60px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
    </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="False">
            <table cellpadding="2" cellspacing="3" class="style1">
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBAlc" runat="server" Text="Alcoholic Beverages" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBAlcEdu" runat="server" Text="Alcohol Educational Tools" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtAlcDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAlcEduDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtAlcPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAlcEduPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtAlcGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAlcEduGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBDrugTip" runat="server" 
                            Text="Drug and Crime Tip Telephone Line and Website" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBDrug" runat="server" Text="Illegal Drugs" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtDrugTipDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDrugDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtDrugTipPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDrugPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtDrugTipGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDrugGud" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBCrisisTeam" runat="server" 
                            Text="Crisis Intervention Team" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBTran" runat="server" Text="Transportation" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtCrisisTeamDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTranDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtCrisisTeamPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTranPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtCrisisTeamGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTranGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnBack2" runat="server" Height="30px" onclick="btnNext2_Click" 
                            Text="Back" Width="60px" />
                        <asp:Button ID="btnNext4" runat="server" Height="30px" onclick="btnNext4_Click" 
                            Text="Next" Width="60px" />
                    </td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
    </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" Visible="False">
            <table cellpadding="2" cellspacing="3">
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBEmPrep" runat="server" Text="Emergency Preparedness" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBTorn" runat="server" Text="Tornados" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtEmPrepDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTornDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtEmPrepPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTornPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtEmPrepGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTornGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBPolicy" runat="server" Text="Policy Statement" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBEmResPlan" runat="server" Text="Emergency Response Plan" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtPolicyDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmResPlanDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtPolicyPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmResPlanPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtPolicyGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmResPlanGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBEmNoteSys" runat="server" 
                            Text="Emergency Notification System" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtEmNoteSysDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtEmNoteSysPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtEmNoteSysGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnBack3" runat="server" Height="30px" onclick="btnNext3_Click" 
                            Text="Back" Width="60px" />
                        <asp:Button ID="btnNext5" runat="server" Height="30px" onclick="btnNext5_Click" 
                            Text="Next" Width="60px" />
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
    </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Visible="False">
            <table cellpadding="2" cellspacing="3">
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBFireSafe" runat="server" Text="Fire Safety" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBExt" runat="server" 
                            Text="Portable Fire Extinguishers" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtFireSafeDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExtDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtFireSafePrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExtPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtFireSafeGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExtGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBEmMedRes" runat="server" 
                            Text="Emergency Medical Response" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CBPhyDis" runat="server" 
                            
                            Text="Emergency Building Evacuation for People with Physical Disabilities" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtEmMedResDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhyDisDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtEmMedResPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhyDisPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtEmMedResGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhyDisGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Add to Report:</td>
                    <td>
                        <asp:CheckBox ID="CBTrap" runat="server" 
                            Text="Trapped or unable to Exit" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Description:</td>
                    <td>
                        <asp:TextBox ID="txtTrapDes" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Procedure:</td>
                    <td>
                        <asp:TextBox ID="txtTrapPrec" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="400px" AutoPostBack="True" ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Guidelines:</td>
                    <td>
                        <asp:TextBox ID="txtTrapGud" runat="server" Height="200px" 
                            TextMode="MultiLine" Width="400px" AutoPostBack="True" 
                            ontextchanged="Textbox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnBack4" runat="server" Height="30px" onclick="btnNext4_Click" 
                            Text="Back" Width="60px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnCreate" runat="server" Height="30px" 
                            onclick="btnCreate_Click" Text="Continue" Width="200px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
    </asp:Panel>
</asp:Content>
