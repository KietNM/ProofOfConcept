namespace ProofOfConcept.Web.Controllers
{
    using System.Web.Mvc;
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            AccountService.AccountServiceClient  ur = new AccountService.AccountServiceClient();
            var result = ur.GetBalance(11111111);
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}