using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace RailwayE_TicketReservationSystem
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RouteService" in both code and config file together.
    public class RouteService : IRouteService
    {
        TrainContext tc = new TrainContext();
        public bool AddRoute(Route route)
        {
            try
            {
                tc.Route.Add(route);
                tc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public IEnumerable<Route> GetRoutes()
        {
            return tc.Route;
        }
    }
}
