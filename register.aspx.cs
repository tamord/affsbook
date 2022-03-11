using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace affsbook
{
    public partial class register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void next1(object sender, EventArgs e)
        {

        }

        protected void login(object sender, EventArgs e)
        {
            Response.Redirect("~/login.html");
        }
    }
}