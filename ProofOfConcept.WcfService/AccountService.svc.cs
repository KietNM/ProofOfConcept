namespace ProofOfConcept.WcfService
{
    using DataContract;
    using System.ServiceModel;
    using System.Linq;
    using Data;
    using System.Data.Entity.Core.Objects;
    using System;

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class AccountService : IAccountService
    {
        AdventureWorks2012Entities db = new AdventureWorks2012Entities();
      
        public ServiceResponse GetBalance(long account)
        {           
            var balance = db.GetAccountBalance(account).Select(x => new ServiceResponse
            {
                AccountNumber = x.AccountNumber,
                Balance = x.Balance,
                Currency = x.CurrencyCode               
            }).FirstOrDefault();
            return balance;
        }

        public ServiceResponse InvokeDeposit(long accountNumber, decimal Amount, string Currency)
        {
            var deposit = db.InsertDeposit(accountNumber, Amount, Currency).Select(x => new ServiceResponse
            {
                AccountNumber = x.AccountNumber,
                Balance = x.Balance,
                Currency = x.CurrencyCode
            }).FirstOrDefault();
            return deposit;          
        }

        public ServiceResponse InvokeWithdraw(long accountNumber, decimal Amount, string Currency)
        {
            ObjectParameter result = new ObjectParameter("Result", typeof(Int32));
            var withdraw = db.InsertWithdraw(accountNumber, Amount, Currency, result).Select(x => new ServiceResponse
            {
                AccountNumber = x.AccountNumber,
                Balance = x.Balance,
                Currency = x.CurrencyCode
            }).FirstOrDefault();
            return withdraw;
        }
    }
}
