using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    public class TrainService : ITrain
    {
        TrainContext tc = new TrainContext();
        public bool AddTrain(Train train)
        {
            try
            {
                tc.Train.Add(train);
                tc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool DeactiveTrain(Guid trainId)
        {
            try
            {
                Train t1 = tc.Train.Find(trainId);
                if (t1 == null) return false;
                t1.isActive = "No";
                tc.Train.AddOrUpdate(t1);
                tc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool UpdateAvailability(Guid trainId, int n)
        {
            try
            {
                Train t1 = tc.Train.Find(trainId);
                if (t1 == null) return false;
                t1.availability = t1.availability+n;
                tc.Train.AddOrUpdate(t1);
                tc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public IEnumerable<Train> GetTrains()
        {
            return tc.Train;
        }
    }

}
