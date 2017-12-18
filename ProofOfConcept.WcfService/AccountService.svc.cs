namespace ProofOfConcept.WcfService
{
    using DataContract;
    using System.ServiceModel;

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class AccountService : IAccountService
    {       
        public ServiceResponse GetBalance(int account)
        {
            ServiceResponse balance = new ServiceResponse();
            balance.AccountNumber = 11111111;
            balance.Balance = 10000000;
            balance.Currency = "USD";
            balance.Successful = true;
            balance.Message = "Get balance";
            return balance;
        }

        public ServiceResponse InvokeDeposit(Transaction transaction)
        {
            ServiceResponse deposit = new ServiceResponse();
            deposit.AccountNumber = 55555555;
            deposit.Balance = 50000000;
            deposit.Currency = "USD";
            deposit.Successful = true;
            deposit.Message = "Invoke deposit";
            return deposit;
        }

        public ServiceResponse InvokeWithdraw(Transaction transaction)
        {
            ServiceResponse withdraw = new ServiceResponse();
            withdraw.AccountNumber = 99999999;
            withdraw.Balance = 90000000;
            withdraw.Currency = "USD";
            withdraw.Successful = true;
            withdraw.Message = "Invoke withdraw";
            return withdraw;
        }
    }
}
