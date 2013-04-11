using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Data.SqlClient;
using CapstoneMainForm.Class;
using CongifManage = System.Configuration.ConfigurationManager;

namespace CapstoneMainForm
{
    public partial class _Default : System.Web.UI.Page
    {
        #region Variables
        // Initialize external classes
        DefVal DV = new DefVal();
        GetVal GV = new GetVal();

        // Initialize Glabal Strings
        string strDeptType;
        string strColUnName;
        string strCity;
        string strCounty;
        string strRadioAlert;
        string strTIXName;
        string strTIXPhone;
        string strTIXLoc;
        string strEmNum;
        string strNonEmNum;
        string strStudLifeNum;
        string strFireDeptNum;
        string strPolURL;
        string strStudHandURL;
        string Text = null;
        string strDBType;
        string strCustID;
        string conPage;
        string clrInfoPage;

        // Initialize Global ints
        int intCustID;

        // Initialize Global List<string>
        List<string> listCheckedTopic = new List<string>();
        List<string> listCheckedDescrip = new List<string>();
        List<string> listCheckedPrec = new List<string>();
        List<string> listCheckedGud = new List<string>();

        // Initialize Global SqlConnection 
        SqlConnection conn;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            // Gets CustID from Querysting
            // Then converts to int
            strCustID = Request.QueryString[0];
            intCustID = Convert.ToInt32(strCustID);

            try
            {
                // Create DB connection
                using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
                {
                    // Opens DB
                    conn.Open();

                    #region getRegInfoVar
                    // Retireve Variable strDeptType from DB
                    strDBType = "DeptType";
                    strDeptType = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable ColUnName from DB
                    strDBType = "ColUnName";
                    strColUnName = GV.dataRec(conn, intCustID, strDBType);
                    #endregion

                    #region getRegLocVar
                    // Retireve Variable City from DB
                    strDBType = "City";
                    strCity = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable County from DB
                    strDBType = "County";
                    strCounty = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable RadioAlert from DB
                    strDBType = "RadioAlert";
                    strRadioAlert = GV.dataRec(conn, intCustID, strDBType);
                    #endregion

                    #region getRegTIXVar
                    // Retireve Variable TIXName from DB
                    strDBType = "TIXName";
                    strTIXName = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable TIXPhone from DB
                    strDBType = "TIXPhone";
                    strTIXPhone = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable TIXLoc from DB
                    strDBType = "TIXLoc";
                    strTIXLoc = GV.dataRec(conn, intCustID, strDBType);
                    #endregion

                    #region getRegNumVar
                    // Retireve Variable EmNum from DB
                    strDBType = "EmNum";
                    strEmNum = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable NonEmNum from DB
                    strDBType = "NonEmNum";
                    strNonEmNum = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable StudLifeNum from DB
                    strDBType = "StudLifeNum";
                    strStudLifeNum = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable FireDeptNum from DB
                    strDBType = "FireDeptNum";
                    strFireDeptNum = GV.dataRec(conn, intCustID, strDBType);
                    #endregion

                    #region getRegURLVar
                    // Retireve Variable PolURL from DB
                    strDBType = "PolURL";
                    strPolURL = GV.dataRec(conn, intCustID, strDBType);

                    // Retireve Variable StudHandURL from DB
                    strDBType = "StudHandURL";
                    strStudHandURL = GV.dataRec(conn, intCustID, strDBType);
                    #endregion
                }
            }
            catch
            {
                // Javascript Error Message
                Response.Write("<script LANGUAGE='JavaScript'>alert('Oh No!  Something has gone wrong.  Please contact your system administrator.  If you choose to continue, you will need to manually fill out the Cleary Report.  We are not liable for any fines.');</script>");
            }

            // If the page is not posted back by the JavaScript messsage
            if (!Page.IsPostBack)
            {
                // If the strDeptType is Police Department
                if (strDeptType == "Police Department")
                {
                    #region SexualText
                    // Populating RapeSexAssault Textboxes
                    txtRapeSexAssaultDes.Text = DV.RapeSexAssultDes(Text);
                    txtRapeSexAssaultPrec.Text = DV.RapeSexAssultPrec(Text, strColUnName, strTIXName, strTIXPhone, strTIXLoc);
                    txtRapeSexAssaultGud.Text = DV.RapeSexAssultGud(Text, strCity);

                    // Populating txtRapeSexAssaultVic Textboxes
                    txtRapeSexAssaultVicDes.Text = DV.Blank(Text);
                    txtRapeSexAssaultVicPrec.Text = DV.Blank(Text);
                    txtRapeSexAssaultVicGud.Text = DV.RapeSexAssaultVicGud(Text, strColUnName);

                    // Populating txtSexOffReg Textboxes
                    txtSexOffRegDes.Text = DV.SexOffRegDes(Text);
                    txtSexOffRegPrec.Text = DV.Blank(Text);
                    txtSexOffRegGud.Text = DV.Blank(Text);

                    // Populating txtAssault Textboxes
                    txtAssaultDes.Text = DV.AssaultDes(Text);
                    txtAssaultPrec.Text = DV.Blank(Text);
                    txtAssaultGud.Text = DV.AssaultGud(Text, strNonEmNum);

                    // Populating txtExVoy Textboxes
                    txtExVoyDes.Text = DV.ExVoyDes(Text);
                    txtExVoyPrec.Text = DV.Blank(Text);
                    txtExVoyGud.Text = DV.ExVoyGud(Text, strEmNum);

                    // Populating txtPhone Textboxes
                    txtPhoneDes.Text = DV.PhoneDes(Text);
                    txtPhonePrec.Text = DV.Blank(Text);
                    txtPhoneGud.Text = DV.PhoneGud(Text);

                    // Populating txtOtherSex Textboxes
                    txtOtherSexDes.Text = DV.OtherSexDes(Text);
                    txtOtherSexPrec.Text = DV.Blank(Text);
                    txtOtherSexGud.Text = DV.OtherSexGud(Text, strStudHandURL);
                    #endregion

                    #region Shooter
                    // Populating txtSafeArmedSubject Textboxes
                    txtSafeArmedSubjectDes.Text = DV.SafeArmedSubjectDes(Text);
                    txtSafeArmedSubjectPrec.Text = DV.Blank(Text);
                    txtSafeArmedSubjectGud.Text = DV.SafeArmedSubjectGud(Text);

                    // Populating txtShootOutsideBld Textboxes
                    txtShootOutsideBldDes.Text = DV.Blank(Text);
                    txtShootOutsideBldPrec.Text = DV.Blank(Text);
                    txtShootOutsideBldGud.Text = DV.ShootOutsideBldGud(Text, strEmNum);

                    // Populating txtShootSmBld Textboxes
                    txtShootSmBldDes.Text = DV.Blank(Text);
                    txtShootSmBldPrec.Text = DV.Blank(Text);
                    txtShootSmBldGud.Text = DV.ShootSmBldGud(Text);

                    // Populating txtShootInOff Textboxes
                    txtShootInOffDes.Text = DV.Blank(Text);
                    txtShootInOffPrec.Text = DV.Blank(Text);
                    txtShootInOffGud.Text = DV.ShootInOffGud(Text, strEmNum);

                    // Populating txtPolRes Textboxes
                    txtPolResDes.Text = DV.PolResDes(Text);
                    txtPolResPrec.Text = DV.Blank(Text);
                    txtPolResGud.Text = DV.Blank(Text);

                    // Populating txtTheft Textboxes
                    txtTheftDes.Text = DV.TheftDes(Text);
                    txtTheftPrec.Text = DV.Blank(Text);
                    txtTheftGud.Text = DV.TheftGud(Text);

                    // Populating txtIdTheft Textboxes
                    txtIdTheftDes.Text = DV.IdTheftDes(Text);
                    txtIdTheftPrec.Text = DV.Blank(Text);
                    txtIdTheftGud.Text = DV.Blank(Text);
                    #endregion

                    #region Alcohol
                    // Populating txtAlc Textboxes
                    txtAlcDes.Text = DV.AlcDes(Text);
                    txtAlcPrec.Text = DV.AlcPrec(Text, strStudHandURL);
                    txtAlcGud.Text = DV.AlcGud(Text, strColUnName);

                    // Populating txtAlcEdu Textboxes
                    txtAlcEduDes.Text = DV.AlcEduDes(Text);
                    txtAlcEduPrec.Text = DV.Blank(Text);
                    txtAlcEduGud.Text = DV.Blank(Text);

                    // Populating txtDrugTip Textboxes
                    txtDrugTipDes.Text = DV.DrugTipDes(Text, strPolURL);
                    txtDrugTipPrec.Text = DV.Blank(Text);
                    txtDrugTipGud.Text = DV.Blank(Text);

                    // Populating txtDrug Textboxes
                    txtDrugDes.Text = DV.DrugDes(Text, strColUnName);
                    txtDrugPrec.Text = DV.DrugPrec(Text, strColUnName);
                    txtDrugGud.Text = DV.DrugGud(Text, strColUnName, strStudLifeNum);

                    // Populating txtCrisisTeam Textboxes
                    txtCrisisTeamDes.Text = DV.CrisisTeamDes(Text, strColUnName, strCounty, strCity);
                    txtCrisisTeamPrec.Text = DV.Blank(Text);
                    txtCrisisTeamGud.Text = DV.Blank(Text);

                    // Populating txtTran Textboxes
                    txtTranDes.Text = DV.TranDes(Text, strCity);
                    txtTranPrec.Text = DV.Blank(Text);
                    txtTranGud.Text = DV.Blank(Text);
                    #endregion

                    #region Weather
                    // Populating txtEmPrep Textboxes
                    txtEmPrepDes.Text = DV.EmPrepDes(Text, strColUnName, strCounty);
                    txtEmPrepPrec.Text = DV.Blank(Text);
                    txtEmPrepGud.Text = DV.EmPrepGud(Text);

                    // Populating txtTorn Textboxes
                    txtTornDes.Text = DV.TornDes(Text, strCounty, strRadioAlert);
                    txtTornPrec.Text = DV.Blank(Text);
                    txtTornGud.Text = DV.TornGud(Text);

                    // Populating txtPolicy Textboxes
                    txtPolicyDes.Text = DV.PolicyDes(Text, strColUnName);
                    txtPolicyPrec.Text = DV.Blank(Text);
                    txtPolicyGud.Text = DV.Blank(Text);

                    // Populating txtEmResPlan Textboxes
                    txtEmResPlanDes.Text = DV.EmResPlanDes(Text);
                    txtEmResPlanPrec.Text = DV.Blank(Text);
                    txtEmResPlanGud.Text = DV.Blank(Text);

                    // Populating txtEmNoteSys Textboxes
                    txtEmNoteSysDes.Text = DV.EmNoteSysDes(Text, strColUnName, strNonEmNum, strRadioAlert);
                    txtEmNoteSysPrec.Text = DV.Blank(Text);
                    txtEmNoteSysGud.Text = DV.Blank(Text);
                    #endregion

                    #region Fire
                    // Populating txtFireSafe Textboxes
                    txtFireSafeDes.Text = DV.FireSafeDes(Text, strColUnName);
                    txtFireSafePrec.Text = DV.FireSafePrec(Text, strColUnName, strCity, strFireDeptNum);
                    txtFireSafeGud.Text = DV.FireSafeGud(Text, strCity, strEmNum);

                    // Populating txtExt Textboxes
                    txtExtDes.Text = DV.ExtDes(Text, strColUnName);
                    txtExtPrec.Text = DV.Blank(Text);
                    txtExtGud.Text = DV.ExtGud(Text);

                    // Populating txtEmMedRes Textboxes
                    txtEmMedResDes.Text = DV.EmMedResDes(Text, strColUnName, strCity);
                    txtEmMedResPrec.Text = DV.Blank(Text);
                    txtEmMedResGud.Text = DV.Blank(Text);

                    // Populating txtPhyDis Textboxes
                    txtPhyDisDes.Text = DV.Blank(Text);
                    txtPhyDisPrec.Text = DV.Blank(Text);
                    txtPhyDisGud.Text = DV.PhyDisGud(Text, strEmNum);

                    // Populating txtTrap Textboxes
                    txtTrapDes.Text = DV.Blank(Text);
                    txtTrapPrec.Text = DV.Blank(Text);
                    txtTrapGud.Text = DV.TrapGud(Text, strEmNum);
                    #endregion
                }

                #region ConstructionPage
                // This is a check that redirects the user to a construction page.
                // Eventually this will populate texboxes for other department type options
                if (strDeptType == "Campus Security" || strDeptType == "None")
                {
                    // Redirect to a construction page
                    conPage = "Construction.aspx";
                    Response.Redirect(conPage);
                }
                #endregion
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            // Create DB connection 
            using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                try
                {
                    // Call the ListPop Method
                    ListPop(sender, e);

                    // counter keeps lists in sync
                    int counter = 0;

                    // For each Topis in the Topic list
                    foreach (var Topic in listCheckedTopic)
                    {
                        // Using CustInfo DB connection
                        using (SqlCommand custInfo = conn.CreateCommand())
                        {
                            //addInfo ID from Web.Congig file
                            custInfo.CommandText = CongifManage.AppSettings["addInfo"];

                            // Variable Perameters
                            custInfo.Parameters.AddWithValue("@CustID", intCustID);
                            custInfo.Parameters.AddWithValue("@Topic", Topic.ToString());
                            custInfo.Parameters.AddWithValue("@Descrip", listCheckedDescrip[counter].ToString());
                            custInfo.Parameters.AddWithValue("@Proced", listCheckedPrec[counter].ToString());
                            custInfo.Parameters.AddWithValue("@Guide", listCheckedGud[counter].ToString());

                            // Toggle DB Open and Close
                            // Execute SQL Statement
                            conn.Open();
                            custInfo.ExecuteNonQuery();
                            conn.Close();

                            // Move to the next item in lists to keep sync
                            counter++;
                        }
                    }

                    // Redirect to ClearyInfo Page
                    // Append CustID to page
                    clrInfoPage = "ClearyInfo.aspx?custID=" + intCustID;
                    Response.Redirect(clrInfoPage);

                }

                // Error pop-up statement
                catch
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Oh No!  Something has gone wrong.  Please contact your system administrator immediately');</script>");
                }
            }
        }

        #region NextBackBtn
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            // Displays Sexual Category Textboxes
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            // Displays Shooting Category Textboxes
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }

        protected void btnNext3_Click(object sender, EventArgs e)
        {
            // Displays Alcohol Category Textboxes
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }

        protected void btnNext4_Click(object sender, EventArgs e)
        {
            // Displays Weather Category Textboxes
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel5.Visible = false;
        }

        protected void btnNext5_Click(object sender, EventArgs e)
        {
            // Displays Fire Category Textboxes
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = true;
        }
        #endregion

        protected void Textbox_TextChanged(object sender, EventArgs e)
        {
            // Warn the user that they are changing the default text
            Response.Write("<script LANGUAGE='JavaScript'>alert('This is a Warning.  You are changing the default text.  We are no longer liable for possible fines.');</script>");
        }

        public void ListPop(object sender, EventArgs e)
        {
            #region Sexual
            // Add RapeSexAssault Values to Lists
            if (CBRapeSexAssault.Checked)
            {
                listCheckedTopic.Add(CBRapeSexAssault.Text);
                listCheckedDescrip.Add(txtRapeSexAssaultDes.Text);
                listCheckedPrec.Add(txtRapeSexAssaultPrec.Text);
                listCheckedGud.Add(txtRapeSexAssaultGud.Text);
            }

            // Add RapeSexAssaultVic Values to Lists
            if (CBRapeSexAssaultVic.Checked)
            {
                listCheckedTopic.Add(CBRapeSexAssaultVic.Text);
                listCheckedDescrip.Add(txtRapeSexAssaultVicDes.Text);
                listCheckedPrec.Add(txtRapeSexAssaultVicPrec.Text);
                listCheckedGud.Add(txtRapeSexAssaultVicGud.Text);
            }

            // Add SexOffReg Values to Lists
            if (CBSexOffReg.Checked)
            {
                listCheckedTopic.Add(CBSexOffReg.Text);
                listCheckedDescrip.Add(txtSexOffRegDes.Text);
                listCheckedPrec.Add(txtSexOffRegPrec.Text);
                listCheckedGud.Add(txtSexOffRegGud.Text);
            }

            // Add Assault Values to Lists
            if (CBAssault.Checked)
            {
                listCheckedTopic.Add(CBAssault.Text);
                listCheckedDescrip.Add(txtAssaultDes.Text);
                listCheckedPrec.Add(txtAssaultPrec.Text);
                listCheckedGud.Add(txtAssaultGud.Text);
            }

            // Add ExVoy Values to Lists
            if (CBExVoy.Checked)
            {
                listCheckedTopic.Add(CBExVoy.Text);
                listCheckedDescrip.Add(txtExVoyDes.Text);
                listCheckedPrec.Add(txtExVoyPrec.Text);
                listCheckedGud.Add(txtExVoyGud.Text);
            }

            // Add Phone Values to Lists
            if (CBPhone.Checked)
            {
                listCheckedTopic.Add(CBPhone.Text);
                listCheckedDescrip.Add(txtPhoneDes.Text);
                listCheckedPrec.Add(txtPhonePrec.Text);
                listCheckedGud.Add(txtPhoneGud.Text);
            }

            // Add OtherSex Values to Lists
            if (CBOtherSex.Checked)
            {
                listCheckedTopic.Add(CBOtherSex.Text);
                listCheckedDescrip.Add(txtOtherSexDes.Text);
                listCheckedPrec.Add(txtOtherSexPrec.Text);
                listCheckedGud.Add(txtOtherSexGud.Text);
            }
            #endregion

            #region Shooter.
            // Add SafeArmedSubject Values to Lists
            if (CBSafeArmedSubject.Checked)
            {
                listCheckedTopic.Add(CBSafeArmedSubject.Text);
                listCheckedDescrip.Add(txtSafeArmedSubjectDes.Text);
                listCheckedPrec.Add(txtSafeArmedSubjectPrec.Text);
                listCheckedGud.Add(txtSafeArmedSubjectGud.Text);
            }

            // Add ShootOutsideBld Values to Lists
            if (CBShootOutsideBld.Checked)
            {
                listCheckedTopic.Add(CBShootOutsideBld.Text);
                listCheckedDescrip.Add(txtShootOutsideBldDes.Text);
                listCheckedPrec.Add(txtShootOutsideBldPrec.Text);
                listCheckedGud.Add(txtShootOutsideBldGud.Text);
            }

            // Add ShootSmBld Values to Lists
            if (CBShootSmBld.Checked)
            {
                listCheckedTopic.Add(CBShootSmBld.Text);
                listCheckedDescrip.Add(txtShootSmBldDes.Text);
                listCheckedPrec.Add(txtShootSmBldPrec.Text);
                listCheckedGud.Add(txtShootSmBldGud.Text);
            }

            // Add ShootInOff Values to Lists
            if (CBShootInOff.Checked)
            {
                listCheckedTopic.Add(CBShootInOff.Text);
                listCheckedDescrip.Add(txtShootInOffDes.Text);
                listCheckedPrec.Add(txtShootInOffPrec.Text);
                listCheckedGud.Add(txtShootInOffGud.Text);
            }

            // Add PolRes Values to Lists
            if (CBPolRes.Checked)
            {
                listCheckedTopic.Add(CBPolRes.Text);
                listCheckedDescrip.Add(txtPolResDes.Text);
                listCheckedPrec.Add(txtPolResPrec.Text);
                listCheckedGud.Add(txtPolResGud.Text);
            }

            // Add Theft Values to Lists
            if (CBTheft.Checked)
            {
                listCheckedTopic.Add(CBTheft.Text);
                listCheckedDescrip.Add(txtTheftDes.Text);
                listCheckedPrec.Add(txtTheftPrec.Text);
                listCheckedGud.Add(txtTheftGud.Text);
            }

            // Add IdTheft Values to Lists
            if (CBIdTheft.Checked)
            {
                listCheckedTopic.Add(CBIdTheft.Text);
                listCheckedDescrip.Add(txtIdTheftDes.Text);
                listCheckedPrec.Add(txtIdTheftPrec.Text);
                listCheckedGud.Add(txtIdTheftGud.Text);
            }
            #endregion

            #region Alcohol
            // Add Alc Values to Lists
            if (CBAlc.Checked)
            {
                listCheckedTopic.Add(CBAlc.Text);
                listCheckedDescrip.Add(txtAlcDes.Text);
                listCheckedPrec.Add(txtAlcPrec.Text);
                listCheckedGud.Add(txtAlcGud.Text);
            }

            // Add AlcEdu Values to Lists
            if (CBAlcEdu.Checked)
            {
                listCheckedTopic.Add(CBAlcEdu.Text);
                listCheckedDescrip.Add(txtAlcEduDes.Text);
                listCheckedPrec.Add(txtAlcEduPrec.Text);
                listCheckedGud.Add(txtAlcEduGud.Text);
            }

            // Add DrugTip Values to Lists
            if (CBDrugTip.Checked)
            {
                listCheckedTopic.Add(CBDrugTip.Text);
                listCheckedDescrip.Add(txtDrugTipDes.Text);
                listCheckedPrec.Add(txtDrugTipPrec.Text);
                listCheckedGud.Add(txtDrugTipGud.Text);
            }

            // Add Drug Values to Lists
            if (CBDrug.Checked)
            {
                listCheckedTopic.Add(CBDrug.Text);
                listCheckedDescrip.Add(txtDrugDes.Text);
                listCheckedPrec.Add(txtDrugPrec.Text);
                listCheckedGud.Add(txtDrugGud.Text);
            }

            // Add CrisisTeam Values to Lists
            if (CBCrisisTeam.Checked)
            {
                listCheckedTopic.Add(CBCrisisTeam.Text);
                listCheckedDescrip.Add(txtCrisisTeamDes.Text);
                listCheckedPrec.Add(txtCrisisTeamPrec.Text);
                listCheckedGud.Add(txtCrisisTeamGud.Text);
            }

            // Add Tran Values to Lists
            if (CBTran.Checked)
            {
                listCheckedTopic.Add(CBTran.Text);
                listCheckedDescrip.Add(txtTranDes.Text);
                listCheckedPrec.Add(txtTranPrec.Text);
                listCheckedGud.Add(txtTranGud.Text);
            }
            #endregion

            #region Weather
            // Add EmPrep Values to Lists
            if (CBEmPrep.Checked)
            {
                listCheckedTopic.Add(CBEmPrep.Text);
                listCheckedDescrip.Add(txtEmPrepDes.Text);
                listCheckedPrec.Add(txtEmPrepPrec.Text);
                listCheckedGud.Add(txtEmPrepGud.Text);
            }

            // Add Torn Values to Lists
            if (CBTorn.Checked)
            {
                listCheckedTopic.Add(CBTorn.Text);
                listCheckedDescrip.Add(txtTornDes.Text);
                listCheckedPrec.Add(txtTornPrec.Text);
                listCheckedGud.Add(txtTornGud.Text);
            }

            // Add Policy Values to Lists
            if (CBPolicy.Checked)
            {
                listCheckedTopic.Add(CBPolicy.Text);
                listCheckedDescrip.Add(txtPolicyDes.Text);
                listCheckedPrec.Add(txtPolicyPrec.Text);
                listCheckedGud.Add(txtPolicyGud.Text);
            }

            // Add EmResPlan Values to Lists
            if (CBEmResPlan.Checked)
            {
                listCheckedTopic.Add(CBEmResPlan.Text);
                listCheckedDescrip.Add(txtEmResPlanDes.Text);
                listCheckedPrec.Add(txtEmResPlanPrec.Text);
                listCheckedGud.Add(txtEmResPlanGud.Text);
            }

            // Add EmNoteSys Values to Lists
            if (CBEmNoteSys.Checked)
            {
                listCheckedTopic.Add(CBEmNoteSys.Text);
                listCheckedDescrip.Add(txtEmNoteSysDes.Text);
                listCheckedPrec.Add(txtEmNoteSysPrec.Text);
                listCheckedGud.Add(txtEmNoteSysGud.Text);
            }
            #endregion

            #region Fire
            // Add FireSafe Values to Lists
            if (CBFireSafe.Checked)
            {
                listCheckedTopic.Add(CBFireSafe.Text);
                listCheckedDescrip.Add(txtFireSafeDes.Text);
                listCheckedPrec.Add(txtFireSafePrec.Text);
                listCheckedGud.Add(txtFireSafeGud.Text);
            }

            // Add Ext Values to Lists
            if (CBExt.Checked)
            {
                listCheckedTopic.Add(CBExt.Text);
                listCheckedDescrip.Add(txtExtDes.Text);
                listCheckedPrec.Add(txtExtPrec.Text);
                listCheckedGud.Add(txtExtGud.Text);
            }

            // Add EmMedRes Values to Lists
            if (CBEmMedRes.Checked)
            {
                listCheckedTopic.Add(CBEmMedRes.Text);
                listCheckedDescrip.Add(txtEmMedResDes.Text);
                listCheckedPrec.Add(txtEmMedResPrec.Text);
                listCheckedGud.Add(txtEmMedResGud.Text);
            }

            // Add PhyDis Values to Lists
            if (CBPhyDis.Checked)
            {
                listCheckedTopic.Add(CBPhyDis.Text);
                listCheckedDescrip.Add(txtPhyDisDes.Text);
                listCheckedPrec.Add(txtPhyDisPrec.Text);
                listCheckedGud.Add(txtPhyDisGud.Text);
            }

            // Add Trap Values to Lists
            if (CBTrap.Checked)
            {
                listCheckedTopic.Add(CBTrap.Text);
                listCheckedDescrip.Add(txtTrapDes.Text);
                listCheckedPrec.Add(txtTrapPrec.Text);
                listCheckedGud.Add(txtTrapGud.Text);
            }
            #endregion
        }
    }
}