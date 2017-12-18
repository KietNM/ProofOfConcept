namespace ProofOfConcept.WcfService
{
    using DataContract;
    using System.ServiceModel;

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class AccountService : IAccountService
    {       
        public RequestResponse GetBalance(int account)
        {
            RequestResponse balance = new RequestResponse();
            balance.AccountNumber = 11111111;
            balance.Balance = 10000000;
            balance.Currency = "USD";
            balance.Successful = true;
            balance.Message = "Get balance";
            return balance;
        }

        public RequestResponse InvokeDeposit(Transaction transaction)
        {
            RequestResponse deposit = new RequestResponse();
            deposit.AccountNumber = 55555555;
            deposit.Balance = 50000000;
            deposit.Currency = "USD";
            deposit.Successful = true;
            deposit.Message = "Invoke deposit";
            return deposit;
        }

        public RequestResponse InvokeWithdraw(Transaction transaction)
        {
            RequestResponse withdraw = new RequestResponse();
            withdraw.AccountNumber = 99999999;
            withdraw.Balance = 90000000;
            withdraw.Currency = "USD";
            withdraw.Successful = true;
            withdraw.Message = "Invoke withdraw";
            return withdraw;
        }
    }
}
