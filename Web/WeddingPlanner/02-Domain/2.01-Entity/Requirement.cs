using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeddingPlanner.Domain.Entity
{
    public class Requirement : PayObject
    {
        [Key]
        public int RequirementId { get; set; }
        public int Name { get; set; }
        public int Description { get; set; }
        public int RequirementTypeId { get; set; }
    }
}
