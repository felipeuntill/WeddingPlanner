using System.Web;
using System.Web.Mvc;

namespace _4._01_CommunicationBus
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
