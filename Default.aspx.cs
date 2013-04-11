using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapstoneMainForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            // Redirect to Survey
            // add in in of the lgoin after
            string main = "ClearyForms/Survey.aspx";
            Response.Redirect(main);
        }
    }
}