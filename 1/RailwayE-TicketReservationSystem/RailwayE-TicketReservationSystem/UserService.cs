using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    public class UserService : IUser
    {
        UserContext uc = new UserContext();
        public bool AddUser(User user)
        {
            try
            {
                uc.User.Add(user);
                uc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool UpdateUser(User user)
        {
            try
            {
                User u1 = uc.User.Find(user.userId);
                if (u1 == null) return false;
                u1.address = user.address;
                u1.userName = user.userName;
                u1.firstName = user.firstName;
                u1.lastName = user.lastName;
                u1.email = user.email;
                u1.mobileNo = user.mobileNo;
                u1.gender = user.gender;
                u1.password = user.password;
                u1.isActive = user.isActive;
                uc.User.AddOrUpdate(u1);
                uc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool DeleteUser(Guid userId)
        {
            try
            {
                User u1 = uc.User.Find(userId);
                uc.User.Remove(u1);
                uc.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public User FindUser(Guid userId)
        {
            User u1 = uc.User.Find(userId);
            return u1;
        }
        public IEnumerable<User> GetUsers()
        {
            return uc.User;
        }
    }
}
