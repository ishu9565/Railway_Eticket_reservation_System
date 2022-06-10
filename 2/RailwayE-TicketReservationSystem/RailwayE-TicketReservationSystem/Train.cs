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
    public class Train
    {
        [DataMember]
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [DataType("integer")]
        public Guid trainId { get; set; }

        [DataMember]
        [DataType("integer")]
        [Index(IsUnique = true)]
        [Required]
        public int trainNo { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(50)]
        [Required]
        public string trainType { get; set; }

        [DataMember]
        [DataType("integer")]
        [Required]
        public int availability { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [Required]
        public string isActive { get; set; }

        [DataMember]
        [DataType(DataType.DateTime)]
        public DateTime cretedAt { get; set; }
    }

    [DataContract]
    public class Route
    {
        [DataMember]
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [DataType("integer")]
        public Guid routeId { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(50)]
        [Required]
        public string from { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [StringLength(50)]
        [Required]
        public string to { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [Required]
        public string sTime { get; set; }

        [DataMember]
        [DataType(DataType.Text)]
        [Required]
        public string eTime { get; set; }

        // Foreign key   
        [ForeignKey("Train")]
        [DataMember]
        public Guid trainId { get; set; }
        public Train Train { get; set; }

        [DataMember]
        [DataType("integer")]
        [Required]
        public int price { get; set; }
    }
}
