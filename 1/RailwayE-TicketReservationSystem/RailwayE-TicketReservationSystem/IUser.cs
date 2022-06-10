using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    [ServiceContract]
    public interface IUser
    {
        [OperationContract]
        bool AddUser(User user);

        [OperationContract]
        bool UpdateUser(User user);

        [OperationContract]
        bool DeleteUser(Guid userId);

        [OperationContract]
        User FindUser(Guid userId);

        [OperationContract]
        IEnumerable<User> GetUsers();
    }
}
