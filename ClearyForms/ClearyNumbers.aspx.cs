using System;
using System.Collections.Generic;
using CapstoneMainForm.Class;
using System.Data.SqlClient;
using CongifManage = System.Configuration.ConfigurationManager;

namespace CapstoneMainForm.ClearyForms
{
    public partial class ClearyNumbers : System.Web.UI.Page
    {
        #region Variables
        // Initialize Class
        GetVal GV = new GetVal();

        // Initialize SqlConnections
        SqlConnection conn;

        // Initialize strings
        string strCustID;
        string strY1;
        string strY2;
        string strY3;
        string strItem;

        // Intitialize ints
        int intCustID;
        int intYearNumb;
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

                    // Get ClearyYear from DB
                    // Sutract ClearyYear By intYearNumb
                    // Set Year to Labels in Form
                    intYearNumb = 3;
                    strY1 = GV.Years(conn, intCustID, intYearNumb);
                    Yr1_1P1.Text = Yr2_1P1.Text = Yr3_1P1.Text = Yr4_1P1.Text =
                        Yr1_1P2.Text = Yr2_1P2.Text = Yr3_1P2.Text = Yr4_1P2.Text =
                        Yr1_1P3.Text = Yr2_1P3.Text = Yr3_1P3.Text = Yr4_1P3.Text = Yr5_1P3.Text =
                        Yr1_1P4.Text = strY1;

                    // Get ClearyYear from DB
                    // Sutract ClearyYear By intYearNumb
                    // Set Year to Labels in Form
                    intYearNumb = 2;
                    strY2 = GV.Years(conn, intCustID, intYearNumb);
                    Yr1_2P1.Text = Yr2_2P1.Text = Yr3_2P1.Text = Yr4_2P1.Text =
                        Yr1_2P2.Text = Yr2_2P2.Text = Yr3_2P2.Text = Yr4_2P2.Text =
                        Yr1_2P3.Text = Yr2_2P3.Text = Yr3_2P3.Text = Yr4_2P3.Text = Yr5_2P3.Text =
                        Yr1_2P4.Text = strY2;

                    // Get ClearyYear from DB
                    // Sutract ClearyYear By intYearNumb
                    // Set Year to Labels in Form
                    intYearNumb = 1;
                    strY3 = GV.Years(conn, intCustID, intYearNumb);
                    Yr1_3P1.Text = Yr2_3P1.Text = Yr3_3P1.Text = Yr4_3P1.Text =
                        Yr1_3P2.Text = Yr2_3P2.Text = Yr3_3P2.Text = Yr4_3P2.Text =
                        Yr1_3P3.Text = Yr2_3P3.Text = Yr3_3P3.Text = Yr4_3P3.Text = Yr5_3P3.Text =
                        Yr1_3P4.Text = strY3;

                    // Close connection
                    conn.Close();

                }
            }
            catch
            {
                // Javascript Error Message
                Response.Write("<script LANGUAGE='JavaScript'>alert('Oh No!  Something has gone wrong.  Please contact your system administrator.  If you choose to continue, if you go on you probably will be get fines.');</script>");
            
            }
        }

        protected void btnCreateRep_Click(object sender, EventArgs e)
        {
            // This button will eventually create the PDF document.
            Response.Redirect("Construstion.aspx");
        }

        #region PanelBtn
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            // Displays Criminal Offenses Table
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            // Displays Criminal Hate Offenses Table
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }

        protected void btnNext3_Click(object sender, EventArgs e)
        {
            // Displays Drug Alcohol and Weapons Table
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }

        protected void btnNext4_Click(object sender, EventArgs e)
        {
            // Displays Fire and Disasters Table
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        }
        #endregion

        #region DDLChange
        protected void CrimOff_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Make textbox visible only if Other is chosen
            if (ddlCrimOff.Text == "Other")
            {

                txtOtherP1.Visible = true;
            }
            else
            {
                txtOtherP1.Visible = false;
            }

            // Hide button if --Select Item-- is chosen
            if (ddlCrimOff.Text == "--Select Item--")
            {
                btnAddP1.Visible = false;
            }
            else
            {
                btnAddP1.Visible = true;
            }

            txtY1C1P1.Text = txtY2C1P1.Text = txtY3C1P1.Text =
                txtY1C2P1.Text = txtY2C2P1.Text = txtY3C2P1.Text =
                txtY1C3P1.Text = txtY2C3P1.Text = txtY3C3P1.Text =
                txtY1C4P1.Text = txtY2C4P1.Text = txtY3C4P1.Text = "0";
        }

        protected void HateOff_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Make textbox visible only if Other is chosen
            if (ddlHateOff.Text == "Other")
            {

                txtOtherP2.Visible = true;
            }
            else
            {
                txtOtherP2.Visible = false;
            }

            // Hide button if --Select Item-- is chosen
            if (ddlHateOff.Text == "--Select Item--")
            {
                btnAddP2.Visible = false;
            }
            else
            {
                btnAddP2.Visible = true;
            }

            txtY1C1P2.Text = txtY2C1P2.Text = txtY3C1P2.Text =
                txtY1C2P2.Text = txtY2C2P2.Text = txtY3C2P2.Text =
                txtY1C3P2.Text = txtY2C3P2.Text = txtY3C3P2.Text =
                txtY1C4P2.Text = txtY2C4P2.Text = txtY3C4P2.Text = "0";
        }

        protected void DAW_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Make textbox visible only if Other is chosen
            if (ddlDAW.Text == "Other")
            {

                txtOtherP3.Visible = true;
            }
            else
            {
                txtOtherP3.Visible = false;
            }

            // Hide button if --Select Item-- is chosen
            if (ddlDAW.Text == "--Select Item--")
            {
                btnAddP3.Visible = false;
            }
            else
            {
                btnAddP3.Visible = true;
            }

            txtY1C1P3.Text = txtY2C1P3.Text = txtY3C1P3.Text =
                txtY1C2P3.Text = txtY2C2P3.Text = txtY3C2P3.Text =
                txtY1C3P3.Text = txtY2C3P3.Text = txtY3C3P3.Text =
                txtY1C4P3.Text = txtY2C4P3.Text = txtY3C4P3.Text =
                txtY1C5P3.Text = txtY2C5P3.Text = txtY3C5P3.Text = "0";
        }

        protected void FD_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Make textbox visible only if Other is chosen
            if (ddlFireDis.Text == "Other")
            {

                txtOtherP4.Visible = true;
            }
            else
            {
                txtOtherP4.Visible = false;
            }

            // Hide button if --Select Item-- is chosen
            if (ddlFireDis.Text == "--Select Item--")
            {
                btnAddP4.Visible = false;
            }
            else
            {
                btnAddP4.Visible = true;
            }

            txtY1C1P4.Text = txtY2C1P4.Text = txtY3C1P4.Text = "0";
        }
        #endregion

        #region DBInserts
        protected void CrimOff_Click(object sender, EventArgs e)
        {

            // If other chosen, use Textbox text instead of DropDown text
            if (ddlCrimOff.Text == "Other")
            {
                strItem = txtOtherP1.Text;
            }
            else
            {
                strItem = ddlCrimOff.Text;
            }

                // Connects to DB
            using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                // Using CrimOff DB connection
                using (SqlCommand CrimOff = conn.CreateCommand())
                {
                    //addCrimOff ID from Web.Congig file
                    CrimOff.CommandText = CongifManage.AppSettings["addCrimOff"];

                    // Variable Perameters
                    CrimOff.Parameters.AddWithValue("@CustID", intCustID);
                    CrimOff.Parameters.AddWithValue("@Topic", strItem);
                    CrimOff.Parameters.AddWithValue("@Year1Col1", Convert.ToInt32(txtY1C1P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year2Col1", Convert.ToInt32(txtY2C1P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year3Col1", Convert.ToInt32(txtY3C1P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year1Col2", Convert.ToInt32(txtY1C2P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year2Col2", Convert.ToInt32(txtY2C2P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year3Col2", Convert.ToInt32(txtY3C2P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year1Col3", Convert.ToInt32(txtY1C3P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year2Col3", Convert.ToInt32(txtY2C3P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year3Col3", Convert.ToInt32(txtY3C3P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year1Col4", Convert.ToInt32(txtY1C4P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year2Col4", Convert.ToInt32(txtY2C4P1.Text));
                    CrimOff.Parameters.AddWithValue("@Year3Col4", Convert.ToInt32(txtY3C4P1.Text));

                    // Toggle DB Open and Close
                    // Execute SQL Statement
                    conn.Open();
                    CrimOff.ExecuteNonQuery();
                    conn.Close();
                }
            }

            // Clear Textbox text
            txtOtherP1.Text = "";
        }

        protected void HateOff_Click(object sender, EventArgs e)
        {
            // If other chosen, use Textbox text instead of DropDown text
            if (ddlHateOff.Text == "Other")
            {
                strItem = txtOtherP2.Text;
            }
            else
            {
                strItem = ddlHateOff.Text;
            }

                // Connects to DB
            using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                // Using HateOff DB connection
                using (SqlCommand HateOff = conn.CreateCommand())
                {
                    //addHateOff ID from Web.Congig file
                    HateOff.CommandText = CongifManage.AppSettings["addHateOff"];

                    // Variable Perameters
                    HateOff.Parameters.AddWithValue("@CustID", intCustID);
                    HateOff.Parameters.AddWithValue("@Topic", strItem);
                    HateOff.Parameters.AddWithValue("@Year1Col1", Convert.ToInt32(txtY1C1P2.Text));
                    HateOff.Parameters.AddWithValue("@Year2Col1", Convert.ToInt32(txtY2C1P2.Text));
                    HateOff.Parameters.AddWithValue("@Year3Col1", Convert.ToInt32(txtY3C1P2.Text));
                    HateOff.Parameters.AddWithValue("@Year1Col2", Convert.ToInt32(txtY1C2P2.Text));
                    HateOff.Parameters.AddWithValue("@Year2Col2", Convert.ToInt32(txtY2C2P2.Text));
                    HateOff.Parameters.AddWithValue("@Year3Col2", Convert.ToInt32(txtY3C2P2.Text));
                    HateOff.Parameters.AddWithValue("@Year1Col3", Convert.ToInt32(txtY1C3P2.Text));
                    HateOff.Parameters.AddWithValue("@Year2Col3", Convert.ToInt32(txtY2C3P2.Text));
                    HateOff.Parameters.AddWithValue("@Year3Col3", Convert.ToInt32(txtY3C3P2.Text));
                    HateOff.Parameters.AddWithValue("@Year1Col4", Convert.ToInt32(txtY1C4P2.Text));
                    HateOff.Parameters.AddWithValue("@Year2Col4", Convert.ToInt32(txtY2C4P2.Text));
                    HateOff.Parameters.AddWithValue("@Year3Col4", Convert.ToInt32(txtY3C4P2.Text));

                    // Toggle DB Open and Close
                    // Execute SQL Statement
                    conn.Open();
                    HateOff.ExecuteNonQuery();
                    conn.Close();
                }
            }

            // Move to the next item in lists to keep sync
            txtOtherP2.Text = "";
        }

        protected void DAW_Click(object sender, EventArgs e)
        {
            // If other chosen, use Textbox text instead of DropDown text
            if (ddlDAW.Text == "Other")
            {
                strItem = txtOtherP3.Text;
            }
            else
            {
                strItem = ddlDAW.Text;
            }

                // Connects to DB
            using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                // Using DAW DB connection
                using (SqlCommand DAW = conn.CreateCommand())
                {
                    //addDAW ID from Web.Congig file
                    DAW.CommandText = CongifManage.AppSettings["addDAW"];

                    // Variable Perameters
                    DAW.Parameters.AddWithValue("@CustID", intCustID);
                    DAW.Parameters.AddWithValue("@Topic", strItem);
                    DAW.Parameters.AddWithValue("@Year1Col1", Convert.ToInt32(txtY1C1P3.Text));
                    DAW.Parameters.AddWithValue("@Year2Col1", Convert.ToInt32(txtY2C1P3.Text));
                    DAW.Parameters.AddWithValue("@Year3Col1", Convert.ToInt32(txtY3C1P3.Text));
                    DAW.Parameters.AddWithValue("@Year1Col2", Convert.ToInt32(txtY1C2P3.Text));
                    DAW.Parameters.AddWithValue("@Year2Col2", Convert.ToInt32(txtY2C2P3.Text));
                    DAW.Parameters.AddWithValue("@Year3Col2", Convert.ToInt32(txtY3C2P3.Text));
                    DAW.Parameters.AddWithValue("@Year1Col3", Convert.ToInt32(txtY1C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year2Col3", Convert.ToInt32(txtY2C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year3Col3", Convert.ToInt32(txtY3C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year1Col4", Convert.ToInt32(txtY1C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year2Col4", Convert.ToInt32(txtY2C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year3Col4", Convert.ToInt32(txtY3C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year1Col5", Convert.ToInt32(txtY1C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year2Col5", Convert.ToInt32(txtY2C3P3.Text));
                    DAW.Parameters.AddWithValue("@Year3Col5", Convert.ToInt32(txtY3C3P3.Text));

                    // Toggle DB Open and Close
                    // Execute SQL Statement
                    conn.Open();
                    DAW.ExecuteNonQuery();
                    conn.Close();

                }
            }

            // Clear Textbox text
            txtOtherP3.Text = "";
        }

        protected void FD_Click(object sender, EventArgs e)
        {
            // If other chosen, use Textbox text instead of DropDown text
            if (ddlFireDis.Text == "Other")
            {
                strItem = txtOtherP4.Text;
            }
            else
            {
                strItem = ddlFireDis.Text;
            }


            using (conn = new SqlConnection(CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                // Using CustInfo DB connection
                using (SqlCommand FD = conn.CreateCommand())
                {
                    //addInfo ID from Web.Congig file
                    FD.CommandText = CongifManage.AppSettings["addFD"];

                    // Variable Perameters
                    FD.Parameters.AddWithValue("@CustID", intCustID);
                    FD.Parameters.AddWithValue("@Topic", strItem);
                    FD.Parameters.AddWithValue("@Year1Col1", Convert.ToInt32(txtY1C1P4.Text));
                    FD.Parameters.AddWithValue("@Year2Col1", Convert.ToInt32(txtY2C1P4.Text));
                    FD.Parameters.AddWithValue("@Year3Col1", Convert.ToInt32(txtY3C1P4.Text));

                    // Toggle DB Open and Close
                    // Execute SQL Statement
                    conn.Open();
                    FD.ExecuteNonQuery();
                    conn.Close();

                    // Clear Textbox text
                    txtOtherP4.Text = "";
                }
            }
        }
        #endregion

        
    }
}