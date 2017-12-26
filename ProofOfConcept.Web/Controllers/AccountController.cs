namespace ProofOfConcept.Web.Controllers
{
    using Core.ViewModels;
    using System.Web.Mvc;
    public class AccountController : Controller
    {
        AccountService.AccountServiceClient ur = new AccountService.AccountServiceClient();

        // GET: Account
        public ActionResult Balance()
        {
            return View();
        }

        // GET: Account
        public ActionResult Deposit()
        {
            return View();
        }

        // GET: Account
        public ActionResult Withdraw()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetBalance(long accountNumber)
        {
            var result = ur.GetBalance(accountNumber);

            var balance = new BalanceViewModel
            {
                AccountNumber = result.AccountNumber,
                Balance = result.Balance,
                Currency = result.Currency,
                Successful = result.Successful,
                Message = result.Message
            };
            return Json(balance, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult InvokeDeposit(long accountNumber,decimal amount,string currency)
        {                    
            var result = ur.InvokeDeposit(accountNumber, amount, currency);

            var deposit = new BalanceViewModel
            {
                AccountNumber = result.AccountNumber,
                Balance = result.Balance,
                Currency = result.Currency,
                Successful = result.Successful,
                Message = result.Message
            };
            return Json(deposit, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult InvokeWithdraw(long accountNumber, decimal amount, string currency)
        {
            var result = ur.InvokeWithdraw(accountNumber, amount, currency);
            var withdraw = new BalanceViewModel
            {
                AccountNumber = result.AccountNumber,
                Balance = result.Balance,
                Currency = result.Currency,
                Successful = result.Successful,
                Message = result.Message
            };
            return Json(withdraw, JsonRequestBehavior.AllowGet);
        }
    }
}