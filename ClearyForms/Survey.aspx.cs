using System;
using System.Data.SqlClient;
using CongifManage = System.Configuration.ConfigurationManager;

namespace CapstoneMainForm.ClearyForms
{
    public partial class Survey : System.Web.UI.Page
    {
        #region Variables
        // Initialize strings
        string strFullName;
        string strColUnName;
        string strDeptType;
        string strEmail;
        string strRadioAlert;
        string strCampDeptLoc;
        string strStreetAddress;
        string strCity;
        string strState;
        string strZipCode;
        string strCounty;
        string strTIXName;
        string strTIXNumb;
        string strTIXLoc;
        string strEmNum;
        string strNonEmNum;
        string strFireNumb;
        string strStudLifeNumb;
        string strCityPolNum;
        string strSherrifDeptNum;
        string strHospName;
        string strHospPhone;
        string strCampPolURL;
        string strStudHandURL;
        string strClrRepURL;
        string strAbout;
        string strMotto;
        string wizardPage;
        string Date;

        // Initialize integers
        int intCurYear;
        int intClearYr;
        int intCustID;

        // Initialize Bool
        bool digit;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            // Set DateTime function to variable
            Date = DateTime.Now.ToString();

            // Set separator chars
            // string[] year of seperated values
            char[] separators = new char[] { '/', ' ' };
            string[] year = Date.Split(separators, StringSplitOptions.RemoveEmptyEntries);

            // Set CurrentYear Text
            CurrentYear.Text = year[2];
            intCurYear = Convert.ToInt32(CurrentYear.Text);

            // Set Cleary Year Text
            intClearYr = (intCurYear - 1);
            CalYear.Text = intClearYr.ToString();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            // Set SqlConnection from Web.Config file
            using (SqlConnection conn = new SqlConnection
                (CongifManage.ConnectionStrings["conn"].ConnectionString))
            {
                // Open DB
                conn.Open();

                #region SetVar
                // Set Text to Variables
                strFullName = FullName.Text;
                strColUnName = ColUnName.Text;
                strDeptType = DeptType.Text;
                strEmail = EMail.Text;
                strRadioAlert = RadioAlert.Text;
                strCampDeptLoc = CampDeptLoc.Text;
                strStreetAddress = StreetAddress.Text;
                strCity = City.Text;
                strState = State.Text;
                strZipCode = ZipCode.Text;
                strCounty = County.Text;
                strTIXName = TIXName.Text;
                strTIXNumb = TIXNumb.Text;
                strTIXLoc = TIXLoc.Text;
                strEmNum = CamEmNum.Text;
                strNonEmNum = CamNonEmNum.Text;
                strFireNumb = CityFireNumb.Text;
                strStudLifeNumb = StudLifeNumb.Text;
                strCityPolNum = CityPolNum.Text;
                strSherrifDeptNum = CountSherNum.Text;
                strHospName = HospName.Text;
                strHospPhone = HospPhone.Text;
                strCampPolURL = CamPolURL.Text;
                strStudHandURL = StudHandURL.Text;
                strClrRepURL = ClrReportURL.Text;
                strAbout = About.Text;
                strMotto = Motto.Text;
                #endregion

                // For each character in strZipCode
                // Make sure each digit is a number
                foreach (char numb in strZipCode)
                {
                    // Is the char a digit
                    digit = char.IsDigit(numb);

                    // If not display Validation
                    if (digit == false)
                    {
                        Warning.Text = "Please Enter a Number";
                        return;
                    }
                }

                try
                {
                    #region AddRegInfo
                    // Add Values to RegInfo Table
                    using (SqlCommand cmdAddRegInfo = conn.CreateCommand())
                    {
                        cmdAddRegInfo.CommandText = CongifManage.AppSettings["addRegInfo"];

                        cmdAddRegInfo.Parameters.AddWithValue("@FullName", strFullName);
                        cmdAddRegInfo.Parameters.AddWithValue("@ColUnName", strColUnName);
                        cmdAddRegInfo.Parameters.AddWithValue("@DeptType", strDeptType);
                        cmdAddRegInfo.Parameters.AddWithValue("@Email", strEmail);
                        cmdAddRegInfo.Parameters.AddWithValue("@CurYear", intCurYear);
                        cmdAddRegInfo.Parameters.AddWithValue("@ClearYear", intClearYr);
                        cmdAddRegInfo.Parameters.AddWithValue("@RadioSys", strRadioAlert);
                        cmdAddRegInfo.Parameters.AddWithValue("@CampDeptLoc", strCampDeptLoc);

                        cmdAddRegInfo.ExecuteNonQuery();
                    }
                    #endregion

                    #region AddRegLoc
                    // Add Values to RegLoc Table
                    using (SqlCommand cmdAddRegLoc = conn.CreateCommand())
                    {
                        cmdAddRegLoc.CommandText = CongifManage.AppSettings["addRegLoc"];

                        cmdAddRegLoc.Parameters.AddWithValue("@Street", strStreetAddress);
                        cmdAddRegLoc.Parameters.AddWithValue("@City", strCity);
                        cmdAddRegLoc.Parameters.AddWithValue("@State", strState);
                        cmdAddRegLoc.Parameters.AddWithValue("@Zip", Convert.ToInt32(strZipCode));
                        cmdAddRegLoc.Parameters.AddWithValue("@County", strCounty);

                        cmdAddRegLoc.ExecuteNonQuery();
                    }
                    #endregion

                    #region AddRegTitleIX
                    // Add Values to RegTitleIX Table
                    using (SqlCommand cmdAddRegTitleIX = conn.CreateCommand())
                    {
                        cmdAddRegTitleIX.CommandText = CongifManage.AppSettings["addRegTitleIX"];

                        cmdAddRegTitleIX.Parameters.AddWithValue("@TIXName", strTIXName);
                        cmdAddRegTitleIX.Parameters.AddWithValue("@TIXPhone", strTIXNumb);
                        cmdAddRegTitleIX.Parameters.AddWithValue("@TIXLoc", strTIXLoc);

                        cmdAddRegTitleIX.ExecuteNonQuery();
                    }
                    #endregion

                    #region AddRegPhone
                    // Add Values to RegPhone Table
                    using (SqlCommand cmdAddRegPhone = conn.CreateCommand())
                    {
                        cmdAddRegPhone.CommandText = CongifManage.AppSettings["addRegPhone"];

                        cmdAddRegPhone.Parameters.AddWithValue("@EmNum", strEmNum);
                        cmdAddRegPhone.Parameters.AddWithValue("@NonEmNum", strNonEmNum);
                        cmdAddRegPhone.Parameters.AddWithValue("@CityFireNum", strFireNumb);
                        cmdAddRegPhone.Parameters.AddWithValue("@StudLifeNum", strStudLifeNumb);
                        cmdAddRegPhone.Parameters.AddWithValue("@CityPolNum", strCityPolNum);
                        cmdAddRegPhone.Parameters.AddWithValue("@CountSherNum", strSherrifDeptNum);

                        cmdAddRegPhone.ExecuteNonQuery();
                    }
                    #endregion

                    #region AddRegHosp
                    // Add Values to RegPhone Table
                    using (SqlCommand cmdAddRegHosp = conn.CreateCommand())
                    {
                        cmdAddRegHosp.CommandText = CongifManage.AppSettings["addRegHosp"];

                        cmdAddRegHosp.Parameters.AddWithValue("@HospName", strHospName);
                        cmdAddRegHosp.Parameters.AddWithValue("@HospPhone", strHospPhone);

                        cmdAddRegHosp.ExecuteNonQuery();
                    }
                    #endregion

                    #region AddRegURL
                    // Add Values to RegURL Table
                    using (SqlCommand cmdAddRegURL = conn.CreateCommand())
                    {
                        cmdAddRegURL.CommandText = CongifManage.AppSettings["addRegURL"];

                        cmdAddRegURL.Parameters.AddWithValue("@CamPolURL", strCampPolURL);
                        cmdAddRegURL.Parameters.AddWithValue("@StudHandURL", strStudHandURL);
                        cmdAddRegURL.Parameters.AddWithValue("@ClrRepURL", strClrRepURL);

                        cmdAddRegURL.ExecuteNonQuery();
                    }
                    #endregion

                    #region AddRegAdd
                    // Add Values to RegAdd Table
                    using (SqlCommand cmdAddRegAdd = conn.CreateCommand())
                    {
                        cmdAddRegAdd.CommandText = CongifManage.AppSettings["addRegAdditional"];

                        cmdAddRegAdd.Parameters.AddWithValue("@About", strAbout);
                        cmdAddRegAdd.Parameters.AddWithValue("@Motto", strMotto);

                        cmdAddRegAdd.ExecuteNonQuery();
                    }
                    #endregion

                    // Retrieve CustID from DB
                    using (SqlCommand getCustID = conn.CreateCommand())
                    {
                        getCustID.CommandText = CongifManage.AppSettings["getCustID"];

                        getCustID.Parameters.AddWithValue("@Email", strEmail);

                        intCustID = Convert.ToInt32(getCustID.ExecuteScalar());
                    }
                }

                // SQL Error
                catch
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Oh No!  Something has gone wrong.  Please contact your system administrator.');</script>");
                }

                // Close DB Connection
                conn.Close();

                // Redirect to Wizard Page
                // Append CustID to page
                wizardPage = "Wizard.aspx?custID=" + intCustID;
                Response.Redirect(wizardPage);
            }
        }
    }
}