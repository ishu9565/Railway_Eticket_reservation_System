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
        ServiceReference.IUser userService;
        protected void Page_Load(object sender, EventArgs e)
        {
            userService = new ServiceReference.UserClient();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Page_Load(sender, e);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUser.aspx");
        }

        protected void ViewUser(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Guid uid = new Guid(btn.CommandArgument);
            Session["uid"] = uid;
            // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + uid + "')", true);
            Response.Redirect("ViewUser.aspx");
        }

        protected void UpdateUser(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Guid uid = new Guid(btn.CommandArgument);
            Session["uid"] = uid;
            Response.Redirect("UpdateUser.aspx");
        }

        protected void DeleteUser(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Guid uid = new Guid(btn.CommandArgument);

            if (userService.DeleteUser(uid))
            {
                Session.Remove("uid");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Removed!!')", true);
                Response.Redirect("AddUser.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Somethings went wrong!!')", true);
            }
        }
    }
}