using System.Web.Mvc;

namespace WeddingPlanner.CommunicationBus.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }
    }
}
