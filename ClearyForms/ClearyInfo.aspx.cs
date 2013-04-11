using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Data.SqlClient;
using CongifManage = System.Configuration.ConfigurationManager;
using CapstoneMainForm.Class;

namespace CapstoneMainForm.ClearyForms
{
    public partial class ClearyStats : System.Web.UI.Page
    {
        #region Variables
        // Initialize Classes
        DefVal DV = new DefVal();
        GetVal GV = new GetVal();

        // Initialize Lists
        List<string> ListTopic;
        List<string> ListMain;
        List<string> ListNotes;

        // Initialize strings
        string strDeptType;
        string conPage;
        string strCustID;
        string Text = null;
        string strDBType;
        string strNonEmNum;
        string strClrURL;
        string strColUnName;
        string strCountSherNum;
        string strEmNum;
        string strFireDeptNum;
        string strHospNum;
        string strPolOffLoc;
        string strPolURL;
        string strStudLifeNum;
        string strCity;
        string strCounty;
        string strHospName;
        string strCityPolNum;
        string strListType;
        string clrNumbPage;

        // Initialize int
        int intCustID;

        // Initialize SqlConnection
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
                    // Open Connection
                    conn.Open();

                    // Get DeptType From DB
                    strDBType = "DeptType";
                    strDeptType = GV.dataRec(conn, intCustID, strDBType);

                    // Get City From DB
                    strDBType = "City";
                    strCity = GV.dataRec(conn, intCustID, strDBType);

                    // Get County From DB
                    strDBType = "County";
                    strCounty = GV.dataRec(conn, intCustID, strDBType);

                    // Get ColUnName From DB
                    strDBType = "ColUnName";
                    strColUnName = GV.dataRec(conn, intCustID, strDBType);

                    // Get ClrURL From DB
                    strDBType = "ClrURL";
                    strClrURL = GV.dataRec(conn, intCustID, strDBType);

                    // Get PolURL From DB
                    strDBType = "PolURL";
                    strPolURL = GV.dataRec(conn, intCustID, strDBType);

                    // Get PolOffLoc From DB
                    strDBType = "PolOffLoc";
                    strPolOffLoc = GV.dataRec(conn, intCustID, strDBType);

                    // Get NonEmNum From DB
                    strDBType = "NonEmNum";
                    strNonEmNum = GV.dataRec(conn, intCustID, strDBType);

                    // Get EmNum From DB
                    strDBType = "EmNum";
                    strEmNum = GV.dataRec(conn, intCustID, strDBType);

                    // Get CityPolNum From DB
                    strDBType = "CityPolNum";
                    strCityPolNum = GV.dataRec(conn, intCustID, strDBType);

                    // Get CountSherNum From DB
                    strDBType = "CountSherNum";
                    strCountSherNum = GV.dataRec(conn, intCustID, strDBType);

                    // Get FireDeptNum From DB
                    strDBType = "FireDeptNum";
                    strFireDeptNum = GV.dataRec(conn, intCustID, strDBType);

                    // Get HospName From DB
                    strDBType = "HospName";
                    strHospName = GV.dataRec(conn, intCustID, strDBType);

                    // Get HospNum From DB
                    strDBType = "HospNum";
                    strHospNum = GV.dataRec(conn, intCustID, strDBType);

                    // Get StudLifeNum From DB
                    strDBType = "StudLifeNum";
                    strStudLifeNum = GV.dataRec(conn, intCustID, strDBType);

                    // Close Connection
                    conn.Close();
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
                    // Set PolRepCmSt Textbox Defaults
                    txtPolRepCmStMain.Text = DV.PolRepCmStMain(Text, strColUnName, strPolURL, strClrURL);
                    txtPolRepCmStNotes.Text = DV.PolRepCmStNotes(Text, strPolOffLoc);

                    // Set AvalSecRep Textbox Defaults
                    txtAvalSecRepMain.Text = DV.AvalSecRepMain(Text, strColUnName, strClrURL);
                    txtAvalSecRepNotes.Text = DV.Blank(Text);

                    // Set GenProcRepCmEm Textbox Defaults
                    txtGenProcRepCmEmMain.Text = DV.GenProcRepCmStMain(Text, strCity, strNonEmNum, strColUnName);
                    txtGenProcRepCmEmNotes.Text = DV.Blank(Text);

                    // Set SexAssaultProc Textbox Defaults
                    txtSexAssaultProcMain.Text = DV.SexAssaultProcMain(Text, strColUnName);
                    txtSexAssaultProcNotes.Text = DV.Blank(Text);

                    // Set MissingProc Textbox Defaults
                    txtMissingProcMain.Text = DV.MissingProcMain(Text);
                    txtMissingProcNotes.Text = DV.Blank(Text);

                    // Set SexMurdRob Textbox Defaults
                    txtSexMurdRobMain.Text = DV.SexMurdRobMain(Text, strColUnName);
                    txtSexMurdRobNotes.Text = DV.Blank(Text);

                    // Set CampTele Textbox Defaults
                    txtCampTeleMain.Text = DV.CampTeleMain(Text, strEmNum, strNonEmNum);
                    txtCampTeleNotes.Text = DV.CampTeleNotes(Text, strEmNum, strColUnName, strNonEmNum, strCity, strCityPolNum, strCounty, strCountSherNum, strFireDeptNum, strHospName, strHospNum, strStudLifeNum);
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

        #region NextBackbtn
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            // Displays Policy Textboxes
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            // Displays Avalability Textboxes
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void btnNext3_Click(object sender, EventArgs e)
        {
            // Displays Procedure Textboxes
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
        #endregion

        protected void Textbox_TextChanged(object sender, EventArgs e)
        {
            // Warn the user that they are changing the default text
            Response.Write("<script LANGUAGE='JavaScript'>alert('This is a Warning.  You are changing the default text.  We are no longer liable for possible fines.');</script>");
        }

        protected void btnStatsReport_Click(object sender, EventArgs e)
        {
            // Create DB connection 
            using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                try
                {
                    // Populate Lists
                    strListType = "Label";
                    ListTopic = ListPop(strListType);

                    strListType = "Main";
                    ListMain = ListPop(strListType);

                    strListType = "Notes";
                    ListNotes = ListPop(strListType);

                    // counter keeps lists in sync
                    int counter = 0;

                    // For each Topis in the Topic list
                    foreach (var Topic in ListTopic)
                    {
                        // Using CustInfo DB connection
                        using (SqlCommand ClrInfo = conn.CreateCommand())
                        {
                            //addInfo ID from Web.Congig file
                            ClrInfo.CommandText = CongifManage.AppSettings["addClrInfo"];

                            // Variable Perameters
                            ClrInfo.Parameters.AddWithValue("@CustID", intCustID);
                            ClrInfo.Parameters.AddWithValue("@Topic", Topic.ToString());
                            ClrInfo.Parameters.AddWithValue("@Main", ListMain[counter].ToString());
                            ClrInfo.Parameters.AddWithValue("@Notes", ListNotes[counter].ToString());

                            // Toggle DB Open and Close
                            // Execute SQL Statement
                            conn.Open();
                            ClrInfo.ExecuteNonQuery();
                            conn.Close();

                            // Move to the next item in lists to keep sync
                            counter++;
                        }
                    }

                    // Redirect to ClearyInfo Page
                    // Append CustID to page
                    clrNumbPage = "ClearyNumbers.aspx?custID=" + intCustID;
                    Response.Redirect(clrNumbPage);
                }

                // Error pop-up statement
                catch
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Oh No!  Something has gone wrong.  Please contact your system administrator immediately');</script>");
                }
            }
        }

        public List<string> ListPop(string strListType)
        {
            // Create Return List
            List<string> ListPop = new List<string>();

            // If string is Label
            if (strListType == "Label")
            {
                // Populate List
                ListPop.Add(lblPolRepCmSt.Text);
                ListPop.Add(lblAvalSecRep.Text);
                ListPop.Add(lblGenProcRepCmEm.Text);
                ListPop.Add(lblSexAssaultProc.Text);
                ListPop.Add(lblMissingProc.Text);
                ListPop.Add(lblSexMurdRob.Text);
                ListPop.Add(lblCampTele.Text);
            }

            // If string is Main
            else if (strListType == "Main")
            {
                //Populate List
                ListPop.Add(txtPolRepCmStMain.Text);
                ListPop.Add(txtAvalSecRepMain.Text);
                ListPop.Add(txtGenProcRepCmEmMain.Text);
                ListPop.Add(txtSexAssaultProcMain.Text);
                ListPop.Add(txtMissingProcMain.Text);
                ListPop.Add(txtSexMurdRobMain.Text);
                ListPop.Add(txtCampTeleMain.Text);
            }

            // if string is Notes
            else if (strListType == "Notes")
            {
                // Populate List
                ListPop.Add(txtPolRepCmStNotes.Text);
                ListPop.Add(txtAvalSecRepNotes.Text);
                ListPop.Add(txtGenProcRepCmEmNotes.Text);
                ListPop.Add(txtSexAssaultProcNotes.Text);
                ListPop.Add(txtMissingProcNotes.Text);
                ListPop.Add(txtSexMurdRobNotes.Text);
                ListPop.Add(txtCampTeleNotes.Text);
            }

            // Return List
            return ListPop;
        }
    }
}
