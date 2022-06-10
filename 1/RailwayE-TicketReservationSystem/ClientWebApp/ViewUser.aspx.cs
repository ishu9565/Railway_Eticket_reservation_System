using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebApp
{
    public partial class ViewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Remove("uid");
            Response.Redirect("AddUser.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("uid");
            Response.Redirect("Home.aspx");
        }
    }
}