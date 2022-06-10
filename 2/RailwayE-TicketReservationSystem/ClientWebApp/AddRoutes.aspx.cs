using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebApp
{
    public partial class AddRoutes : System.Web.UI.Page
    {
        RouteServiceReference.IRouteService routeServiceReference;
        protected void Page_Load(object sender, EventArgs e)
        {
            routeServiceReference = new RouteServiceReference.RouteServiceClient();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTrain.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(Session["tid"] == null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select train!!')", true);
                    return;
                }

                RouteServiceReference.Route route = new RouteServiceReference.Route
                {
                    from = from.Text,
                    to = to.Text,
                    sTime = sTime.Text,
                    eTime = eTime.Text,
                    trainId = (Guid)Session["tid"],
                    price = Int32.Parse(price.Text)
                };

                if (routeServiceReference.AddRoute(route))
                {
                    from.Text = "";
                    to.Text = "";
                    sTime.Text = "";
                    eTime.Text = "";
                    price.Text = "";
                    Session.Remove("tid");
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Train Route Added Successfully!!')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select train!!')", true);
                }
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select train!!')", true);
            }


        }
    }
}