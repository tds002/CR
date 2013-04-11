using System.Data.SqlClient;
using CongifManage = System.Configuration.ConfigurationManager;
using System;

namespace CapstoneMainForm.Class
{
    public class GetVal
    {
        public string dataRec (SqlConnection conn, int intCustID, string strDBType)
        {
            // Initialize strings
            string strValue;
            string configVal = "get" + strDBType;

            // Using SqlComand
            using (SqlCommand sqlValue = conn.CreateCommand())
            {
                // Sql statement from Web.Config
                sqlValue.CommandText = CongifManage.AppSettings[configVal];

                // Add CustID Parameter
                sqlValue.Parameters.AddWithValue("@CustID", intCustID);

                // Set strValue from DB
                strValue = sqlValue.ExecuteScalar().ToString();
            }
            
            // Return Value
            return strValue;
        }

        public string Years(SqlConnection conn, int intCustID, int intYearNumb)
        {
            // Initialize strings
            string strYears;
            string strYear;

            // Intitialize ints
            int intYears;

            // Get ClrYr from DB
            // set to strYear
            string strDBType = "ClrYr";
            strYear = dataRec(conn, intCustID, strDBType);

            // Convert to int
            // Subtract intYearNumb
            // Set value as string
            intYears = (Convert.ToInt32(strYear) - intYearNumb);
            strYears = intYears.ToString();
            
            // return strYears
            return strYears;
        }
    }
}