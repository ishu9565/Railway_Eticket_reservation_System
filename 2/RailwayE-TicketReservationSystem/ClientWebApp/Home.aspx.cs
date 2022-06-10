using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Page_Load(sender, e);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTrain.aspx");
        }

        protected void ViewRoutes(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Guid tid = new Guid(btn.CommandArgument);
            Session["tid"] = tid;
            // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + uid + "')", true);
            Response.Redirect("ViewRoutes.aspx");
        }

        protected void AddRoutes(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Guid tid = new Guid(btn.CommandArgument);
            Session["tid"] = tid;
            Response.Redirect("AddRoutes.aspx");
        }

    }
}