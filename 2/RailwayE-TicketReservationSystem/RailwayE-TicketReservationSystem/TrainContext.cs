using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    public class TrainContext : DbContext
    {
        public TrainContext() : base("name=Trains")
        {

        }
        public DbSet<Train> Train { get; set; }
        public DbSet<Route> Route { get; set; }
    }
}
