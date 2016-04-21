using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeddingPlanner.Domain.Entity
{
    public class PayObject
    {
        public decimal Price { get; set; }
        public decimal Incoming { get; set; }
        public bool SinglePayment { get; set; }
        public int Parcels { get; set; }
        public int ParcelsPaid { get; set; }
        
        public bool Paid {
            get { return RemainingPrice <= 0; }
        }
        public decimal ParcelsPrice {
            get { return Price*((Price - Incoming)/Parcels); }
        }
        public decimal RemainingPrice {
            get { return Price-Incoming-(ParcelsPaid*ParcelsPrice); }
        }
    }
}
