using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeddingPlanner.Domain.Entity
{
    public class Wedding
    {
        [Key]
        public int WeddingId { get; set; }
        public int BrideId { get; set; }
        public int GroomId { get; set; }
    }
}
