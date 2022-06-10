using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    [ServiceContract]
    public interface ITrain
    {
        [OperationContract]
        bool AddTrain(Train train);

        [OperationContract]
        bool DeactiveTrain(Guid trainId);

        [OperationContract]
        bool UpdateAvailability(Guid trainId, int n);

        [OperationContract]
        IEnumerable<Train> GetTrains();      
    }

    
}
