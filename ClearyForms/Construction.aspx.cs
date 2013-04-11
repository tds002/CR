using System;

namespace CapstoneMainForm.ClearyForms
{
    public partial class construction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            string survPage = "Survey.aspx";
            Response.Redirect(survPage);
        }
    }
}