using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebApp
{
    public partial class AddUser : System.Web.UI.Page
    {
        ServiceReference.IUser userService;
        protected void Page_Load(object sender, EventArgs e)
        {
            userService = new ServiceReference.UserClient();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference.User user = new ServiceReference.User
            {
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

            if (userService.AddUser(user))
            {
                userName.Text = "";
                firstName.Text = "";
                lastName.Text = "";
                email.Text = "";
                mobileNo.Text = "";
                DropDownList1.Text = "";
                address.Text = "";
                password.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Added Successfully!!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Check username, email or mobile No!!')", true);
            }
        }
    }
}