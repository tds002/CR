using CongifManage = System.Configuration.ConfigurationManager;

namespace CapstoneMainForm.Class
{
    public class DefVal
    {
        /*
         * This class has simpilar 
         * Methods throughout
         * Each method passes variables from 
         * the DB and appends them with phrases
         * from the Web.Config file
         * to create the default Text in 
         * each textbox
         */

        #region RapeSexAssault
        public string RapeSexAssultDes(string Text)
        {
            Text = CongifManage.AppSettings["RapeSexAssaultDes"];
            return Text;
        }
        
        public string RapeSexAssultPrec(string Text, string strColUnName, string strTIXName, string strTIXPhone, string strTIXLoc)
        {
            Text = strColUnName + CongifManage.AppSettings["RapeSexAssaultPrec1"]
                + strTIXName + CongifManage.AppSettings["RapeSexAssaultPrec2"]
                + strTIXPhone + CongifManage.AppSettings["RapeSexAssaultPrec3"]
                + strTIXLoc + ".";
            return Text;
        }

        public string RapeSexAssultGud(string Text, string strCity)
        {
            Text = CongifManage.AppSettings["RapeSexAssaultGud1"] + strCity
                + CongifManage.AppSettings["RapeSexAssaultGud2"];
            return Text;
        }
        #endregion

        #region RapeSexAssaultVic
        public string RapeSexAssaultVicGud(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["RapeSexAssaultVicGud1"] + strColUnName +
                CongifManage.AppSettings["RapeSexAssaultVicGud2"];
            return Text;
        }
        #endregion

        #region SexOffReg
        public string SexOffRegDes(string Text)
        {
            Text = CongifManage.AppSettings["SexOffRegDes"];
            return Text;
        }
        #endregion

        #region Assault
        public string AssaultDes(string Text)
        {
            Text = CongifManage.AppSettings["AssaultDes"];
            return Text;
        }

        public string AssaultGud(string Text, string strNonEmNum)
        {
            Text = CongifManage.AppSettings["AssaultGud1"] + strNonEmNum +
                CongifManage.AppSettings["AssaultGud2"];
            return Text;
        }
        #endregion

        #region ExVoy
        public string ExVoyDes(string Text)
        {
            Text = "";
            return Text;
        }

        public string ExVoyGud(string Text, string strEmNum)
        {
            Text = CongifManage.AppSettings["ExVoyGud1"] + strEmNum +
                CongifManage.AppSettings["ExVoyGud2"];
            return Text;
        }
        #endregion

        #region Phone
        public string PhoneDes(string Text)
        {
            Text = CongifManage.AppSettings["PhoneDes"];
            return Text;
        }

        public string PhoneGud(string Text)
        {
            Text = CongifManage.AppSettings["PhoneGud"];
            return Text;
        }
        #endregion

        #region OtherSex
        public string OtherSexDes(string Text)
        {
            Text = CongifManage.AppSettings["OtherSexDes"];
            return Text;
        }

        public string OtherSexGud(string Text, string strStudHandURL)
        {
            Text = CongifManage.AppSettings["OtherSexGud"] + strStudHandURL;
            return Text;
        }
        #endregion

        #region SafeArmedSubject
        public string SafeArmedSubjectDes(string Text)
        {
            Text = CongifManage.AppSettings["SafeArmedSubjectDes"];
            return Text;
        }

        public string SafeArmedSubjectGud(string Text)
        {
            Text = CongifManage.AppSettings["SafeArmedSubjectGud"];
            return Text;
        }
        #endregion

        #region ShootOutsideBld
       
        public string ShootOutsideBldGud(string Text, string strEmNum)
        {
            Text = CongifManage.AppSettings["ShootOutsideBldGud1"] + strEmNum +
                CongifManage.AppSettings["ShootOutsideBldGud2"];
            return Text;
        }
        #endregion

        #region ShootSmBld
        public string ShootSmBldGud(string Text)
        {
            Text = CongifManage.AppSettings["ShootSmBldGud"];
            return Text;
        }
        #endregion

        #region ShootInOff
        public string ShootInOffGud(string Text, string strEmNum)
        {
            Text = CongifManage.AppSettings["ShootInOffGud1"] + strEmNum +
                CongifManage.AppSettings["ShootInOffGud2"] + strEmNum +
                CongifManage.AppSettings["ShootInOffGud3"];
            return Text;
        }
        #endregion

        #region PolRes
        public string PolResDes(string Text)
        {
            Text = CongifManage.AppSettings["PolResDes"];
            return Text;
        }
        #endregion

        #region Theft
        public string TheftDes(string Text)
        {
            Text = CongifManage.AppSettings["TheftDes"];
            return Text;
        }

        public string TheftGud(string Text)
        {
            Text = CongifManage.AppSettings["TheftGud"];
            return Text;
        }
        #endregion

        #region IdTheft
        public string IdTheftDes(string Text)
        {
            Text = CongifManage.AppSettings["IdTheftDes"];
            return Text;
        }
        #endregion

        #region Alc
        public string AlcDes(string Text)
        {
            Text = CongifManage.AppSettings["AlcDes"];
            return Text;
        }

        public string AlcPrec(string Text, string strStudHandURL)
        {
            Text = CongifManage.AppSettings["AlcPrec"] + strStudHandURL;
            return Text;
        }

        public string AlcGud(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["AlcGud1"] + strColUnName;
            return Text;
        }
        #endregion

        #region AlcEdu
        public string AlcEduDes(string Text)
        {
            Text = CongifManage.AppSettings["AlcEduDes"];
            return Text;
        }
        #endregion

        #region DrugTip
        public string DrugTipDes(string Text, string strPolURL)
        {
            Text = CongifManage.AppSettings["DrugTipDes"] + strPolURL;
            return Text;
        }
        #endregion

        #region Drug
        public string DrugDes(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["DrugDes1"] + strColUnName +
                CongifManage.AppSettings["DrugDes2"];
            return Text;
        }

        public string DrugPrec(string Text, string strColUnName)
        {
            Text = strColUnName + CongifManage.AppSettings["DrugPrec"];
            return Text;
        }

        public string DrugGud(string Text, string strColUnName, string strStudLifeNum)
        {
            Text = CongifManage.AppSettings["DrugGud1"] + strColUnName +
                CongifManage.AppSettings["DrugGud2"] + strStudLifeNum + ".";
            return Text;
        }
        #endregion

        #region CrisisTeam
        public string CrisisTeamDes(string Text, string strColUnName, string strCounty, string strCity)
        {
            Text = CongifManage.AppSettings["CrisisTeamDes1"] + strColUnName +
                CongifManage.AppSettings["CrisisTeamDes2"] + strCounty +
                CongifManage.AppSettings["CrisisTeamDes3"] + strCity +
                CongifManage.AppSettings["CrisisTeamDes4"];
            return Text;
        }
        #endregion

        #region Tran
        public string TranDes(string Text, string strCity)
        {
            Text = strCity + CongifManage.AppSettings["TranDes"];
            return Text;
        }
        #endregion

        #region EmPrep
        public string EmPrepDes(string Text, string strColUnName, string strCounty)
        {
            Text = CongifManage.AppSettings["EmPrepDes1"] + strColUnName +
                CongifManage.AppSettings["EmPrepDes2"] + strCounty +
                CongifManage.AppSettings["EmPrepDes3"] + strColUnName +
                CongifManage.AppSettings["EmPrepDes1"];
            return Text;
        }

        public string EmPrepGud(string Text)
        {
            Text = CongifManage.AppSettings["EmPrepGud"];
            return Text;
        }
        #endregion

        #region Torn
        public string TornDes(string Text, string strCounty, string strRadioAlert)
        {
            Text = CongifManage.AppSettings["TornDes1"] + strCounty +
                CongifManage.AppSettings["TornDes2"] + strRadioAlert +
                CongifManage.AppSettings["TornDes3"];
            return Text;
        }

        public string TornGud(string Text)
        {
            Text = CongifManage.AppSettings["TornGud"];
            return Text;
        }
        #endregion

        #region Policy
        public string PolicyDes(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["PolicyDes1"] + strColUnName +
                CongifManage.AppSettings["PolicyDes2"];
            return Text;

        }
        #endregion

        #region EmResPlan
        public string EmResPlanDes(string Text)
        {
            Text = CongifManage.AppSettings["EmResPlanDes"];
            return Text;
        }
        #endregion

        #region EmNoteSys
        public string EmNoteSysDes(string Text, string strColUnName, string strNonEmNum, string strRadioAlert)
        {
            Text = strColUnName + CongifManage.AppSettings["EmNoteSysDes1"] +
                strColUnName + CongifManage.AppSettings["EmNoteSysDes2"] + "&" +
                CongifManage.AppSettings["EmNoteSysDes3"] + strNonEmNum +
                CongifManage.AppSettings["EmNoteSysDes4"] + strRadioAlert +
                CongifManage.AppSettings["EmNoteSysDes5"];
            return Text;
        }
        #endregion

        #region FireSafe
        public string FireSafeDes(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["FireSafeDes1"] + strColUnName +
                CongifManage.AppSettings["FireSafeDes2"];
            return Text;
        }

        public string FireSafePrec(string Text, string strColUnName, string strCity, string strFireDeptNum)
        {
            Text = strColUnName + CongifManage.AppSettings["FireSafePrec1"] +
                strColUnName + CongifManage.AppSettings["FireSafePrec2"] +
                strCity + CongifManage.AppSettings["FireSafePrec3"] +
                strFireDeptNum + ".";
            return Text;
        }

        public string FireSafeGud(string Text, string strCity, string strEmNum)
        {
            Text = CongifManage.AppSettings["FireSafeGud1"] + strCity +
                CongifManage.AppSettings["FireSafeGud2"] + strEmNum +
                CongifManage.AppSettings["FireSafeGud3"];
            return Text;
        }
        #endregion

        #region Ext
        public string ExtDes(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["ExtDes1"] + strColUnName +
                CongifManage.AppSettings["ExtDes2"];
            return Text;
        }

        public string ExtGud(string Text)
        {
            Text = CongifManage.AppSettings["ExtGud"];
            return Text;
        }
        #endregion

        #region EmMedRes
        public string EmMedResDes(string Text, string strColUnName, string strCity)
        {
            Text = CongifManage.AppSettings["EmMedResDes1"] + strCity +
                CongifManage.AppSettings["EmMedResDes2"] + strCity +
                CongifManage.AppSettings["EmMedResDes3"] + strCity +
                CongifManage.AppSettings["EmMedResDes4"] + strCity +
                CongifManage.AppSettings["EmMedResDes5"] + strColUnName +
                CongifManage.AppSettings["EmMedResDes1"];
            return Text;
        }
        #endregion

        #region PhyDis
        public string PhyDisGud(string Text, string strEmNum)
        {
            Text = CongifManage.AppSettings["PhyDisGud1"] + strEmNum +
                CongifManage.AppSettings["PhyDisGud2"] + strEmNum +
                CongifManage.AppSettings["PhyDisGud3"] + strEmNum +
                CongifManage.AppSettings["PhyDisGud4"] + strEmNum +
                CongifManage.AppSettings["PhyDisGud5"];
            return Text;
        }
        #endregion

        #region Trap
        public string TrapGud(string Text, string strEmNum)
        {
            Text = CongifManage.AppSettings["TrapGud1"] + strEmNum +
                CongifManage.AppSettings["TrapGud2"];
            return Text;
        }
        #endregion

        #region PolRepCmSt
        public string PolRepCmStMain(string Text, string strColUnName, string strPolURL, string strClrURL)
        {
            Text = CongifManage.AppSettings["PolRepCmStMain1"] + strColUnName +
                CongifManage.AppSettings["PolRepCmStMain2"] + strColUnName +
                CongifManage.AppSettings["PolRepCmStMain3"] + strPolURL +
                CongifManage.AppSettings["PolRepCmStMain4"] + strClrURL +
                CongifManage.AppSettings["PolRepCmStMain5"];
            return Text;
        }

        public string PolRepCmStNotes(string Text, string strPolOffLoc)
        {
            Text = CongifManage.AppSettings["PolRepCmStNotes1"] + strPolOffLoc +
                CongifManage.AppSettings["PolRepCmStNotes2"];
            return Text;
        }
        #endregion

        public string AvalSecRepMain(string Text, string strColUnName, string strClrURL)
        {
            Text = CongifManage.AppSettings["AvalSecRepMain1"] + strColUnName +
                CongifManage.AppSettings["AvalSecRepMain2"] + strClrURL;
            return Text;
        }

        public string GenProcRepCmStMain(string Text, string strCity, string strNonEmNum, string strColUnName)
        {
            Text = CongifManage.AppSettings["GenProcRepCmStMain1"] + strCity +
                CongifManage.AppSettings["GenProcRepCmStMain2"] + strNonEmNum +
                CongifManage.AppSettings["GenProcRepCmStMain3"] + strColUnName +
                CongifManage.AppSettings["GenProcRepCmStMain4"] + strColUnName +
                CongifManage.AppSettings["GenProcRepCmStMain5"];
            return Text;
        }

        public string SexAssaultProcMain(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["SexAssaultProcMain1"] + strColUnName +
                CongifManage.AppSettings["SexAssaultProcMain2"];
            return Text;
        }

        public string MissingProcMain(string Text)
        {
            Text = CongifManage.AppSettings["MissingProcMain"];
            return Text;
        }

        public string SexMurdRobMain(string Text, string strColUnName)
        {
            Text = CongifManage.AppSettings["SexMurdRobMain1"] + strColUnName +
                CongifManage.AppSettings["SexMurdRobMain2"];
            return Text;
        }

        #region CampTele
        public string CampTeleMain(string Text, string strEmNum, string strNonEmNum)
        {
            Text = CongifManage.AppSettings["CampTeleMain1"] + strEmNum +
                CongifManage.AppSettings["CampTeleMain2"] + strNonEmNum;
            return Text;
        }

        public string CampTeleNotes(string Text, string strEmNum, string strColUnName, string strNonEmNum, string strCity, string strCityPolNum, string strCounty, string strCountSherNum, string strFireDeptNum, string strHospName, string strHospNum, string strStudLifeNum)
        {
            Text = strEmNum + CongifManage.AppSettings["CampTeleNotes1"] +
                strColUnName + CongifManage.AppSettings["CampTeleNotes2"] +
                strNonEmNum + CongifManage.AppSettings["Enter"] + 
                strCity + CongifManage.AppSettings["CampTeleNotes3"] +
                strCityPolNum + CongifManage.AppSettings["Enter"] + 
                strCounty + CongifManage.AppSettings["CampTeleNotes4"] +
                strCountSherNum + CongifManage.AppSettings["Enter"] + 
                strCity + CongifManage.AppSettings["CampTeleNotes5"] +
                strFireDeptNum + CongifManage.AppSettings["Enter"] +
                strHospName + " " + strHospNum + CongifManage.AppSettings["Enter"] + 
                CongifManage.AppSettings["CampTeleNotes6"] +
                strStudLifeNum;
            return Text;
        }
        #endregion

        public string Blank(string Text)
        {
            Text = "";
            return Text;
        }

    }
}