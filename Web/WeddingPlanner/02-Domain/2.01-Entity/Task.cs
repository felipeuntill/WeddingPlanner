using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeddingPlanner.Domain.Entity
{
    public class Task
    {
        public int Name { get; set; }
        public int Description { get; set; }
        public bool? Done { get; set; }
    }
}
