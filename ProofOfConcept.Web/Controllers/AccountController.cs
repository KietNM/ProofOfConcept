namespace ProofOfConcept.Web.Controllers
{
    using System.Web.Mvc;
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            // WebServiceHost host = new WebServiceHost();
            AccountService.AccountServiceClient ur = new AccountService.AccountServiceClient();
            var result = ur.GetBalance(11111111);

            var param = new AccountService.Transaction();
            param.AccountNumber = 11111111;
            param.Amount = 11111111;
            param.Currency = "USD";
            param.Type = "1";
            var resultx = ur.InvokeDeposit(param);

            var param2 = new AccountService.Transaction();
            param2.AccountNumber = 11111111;
            param2.Amount = 11111111;
            param2.Currency = "USD";
            param2.Type = "2";
            var result2 = ur.InvokeWithdraw(param2);
            ur.Close();
            return View();
        }
    }
}