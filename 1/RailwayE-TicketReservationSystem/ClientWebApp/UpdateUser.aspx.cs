using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebApp
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        ServiceReference.IUser userService;
        protected void Page_Load(object sender, EventArgs e)
        {
            userService = new ServiceReference.UserClient();
            if (!IsPostBack)
            {
                if (Session["uid"] != null)
                {
                    var user = userService.FindUser((Guid)Session["uid"]);
                    userName.Text = user.userName;
                    firstName.Text = user.firstName;
                    lastName.Text = user.lastName;
                    email.Text = user.email;
                    mobileNo.Text = user.mobileNo;
                    DropDownList1.Text = user.gender;
                    address.Text = user.address;
                    password.Text = user.password;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference.User user = new ServiceReference.User
            {
                userId = (Guid)Session["uid"],
                userName = userName.Text,
                firstName = firstName.Text,
                lastName = lastName.Text,
                email = email.Text,
                mobileNo = mobileNo.Text,
                gender = DropDownList1.Text,
                address = address.Text,
                password = password.Text,
                isActive = "YES",
                cretedAt = DateTime.Now
            };

            if (userService.UpdateUser(user))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Updated Successfully!!')", true);
                Session.Remove("uid");
                Response.Redirect("Home.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something went wrong!!!')", true);
                Page_Load(sender, e);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUser.aspx");
        }
    }
}