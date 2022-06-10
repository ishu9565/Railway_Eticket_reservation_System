using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace RailwayE_TicketReservationSystem
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IRouteService" in both code and config file together.
    [ServiceContract]
    public interface IRouteService
    {
        [OperationContract]
        bool AddRoute(Route route);

        [OperationContract]
        IEnumerable<Route> GetRoutes();
    }
}
