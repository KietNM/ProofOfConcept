namespace ProofOfConcept.Web.Controllers
{
    using System.Web.Mvc;
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            AccountService.AccountServiceClient ur = new AccountService.AccountServiceClient();

            long accountNumber = 11111111;
            decimal amount = 70;
           string Currency = "USD";
            var result1 = ur.GetBalance(accountNumber);
            var result2 = ur.InvokeWithdraw(accountNumber, amount, Currency);
            var result3 = ur.InvokeWithdraw(accountNumber, amount, Currency);
            ur.Close();
            return View();
        }    
    }
}