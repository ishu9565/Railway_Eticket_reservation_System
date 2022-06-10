using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    public class UserContext : DbContext
    {
        public UserContext() : base("name=User")
        {

        }
        public DbSet<User> User { get; set; }
    }
}
