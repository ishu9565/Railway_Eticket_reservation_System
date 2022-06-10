using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace RailwayE_TicketReservationSystem
{
    [DataContract]
    public class User
    {
        [DataMember]
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [DataType("integer")]
        public Guid userId { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(50)]
        [Index(IsUnique = true)]
        [Required(ErrorMessage = "userName is required.")]
        public string userName { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(50)]
        [Required(ErrorMessage = "firstName is required.")]
        public string firstName { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(50)]
        [Required(ErrorMessage = "lastName is required.")]
        public string lastName { get; set; }

        [DataMember]
        [DataType(DataType.EmailAddress)]
        [StringLength(70)]
        [Index(IsUnique = true)]
        [Required(ErrorMessage = "email is required.")]
        public string email { get; set; }

        [DataMember]
        [DataType(DataType.PhoneNumber)]
        [StringLength(40)]
        [Index(IsUnique = true)]
        [Required(ErrorMessage = "mobileNo is required.")]
        public string mobileNo { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(30)]
        [Required(ErrorMessage = "userName is required.")]
        public string gender { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [Required(ErrorMessage = "address is required.")]
        public string address { get; set; }

        [DataMember]
        [DataType(DataType.Password)]
        [Required(ErrorMessage = "password is required.")]
        public string password { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [Required(ErrorMessage = "isActive is required.")]
        public string isActive { get; set; }

        [DataMember]
        [DataType(DataType.DateTime)]
        public DateTime cretedAt { get; set; }
    }
}
