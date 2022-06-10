using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebApp
{
    public partial class AddTrain : System.Web.UI.Page
    {
        TrainServiceReference.ITrain trainServiceReference;
        protected void Page_Load(object sender, EventArgs e)
        {
            trainServiceReference = new TrainServiceReference.TrainClient();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TrainServiceReference.Train train = new TrainServiceReference.Train
            {
                trainNo = Int32.Parse(trainNo.Text),
                trainType = DropDownList2.Text,
                availability = Int32.Parse(availability.Text),
                isActive = "Yes",
                cretedAt = DateTime.Now 
            };

            if (trainServiceReference.AddTrain(train))
            {
                trainNo.Text = "";
                availability.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Train Added Successfully!!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Check train No!!')", true);
            }

        }
    }
}