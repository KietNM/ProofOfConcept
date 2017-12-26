namespace ProofOfConcept.WcfService
{
    using DataContract;
    using System.ServiceModel;
    using System.Linq;
    using Data;
    using System.Data.Entity.Core.Objects;
    using System;
    using Shareds;

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class AccountService : IAccountService
    {
        AdventureWorks2012Entities db = new AdventureWorks2012Entities();

        public ServiceResponse GetBalance(long accountNumber)
        {
            var balance = db.GetAccountBalance(accountNumber).Select(x => new ServiceResponse
            {
                AccountNumber = x.AccountNumber,
                Balance = x.Balance,
                Currency = x.CurrencyCode,
                Successful = true,
                Message = AccountMessage.MSG001
            }).FirstOrDefault();

            if (balance == null)
            {
                balance = new ServiceResponse
                {
                    AccountNumber = accountNumber,
                    Successful = false,
                    Message = AccountMessage.MSG002
                };
            }
            return balance;
        }

        public ServiceResponse InvokeDeposit(long accountNumber, decimal Amount, string Currency)
        {
            var deposit = db.InsertDeposit(accountNumber, Amount, Currency).Select(x => new ServiceResponse
            {
                AccountNumber = x.AccountNumber,
                Balance = x.Balance,
                Currency = x.CurrencyCode,
                Successful = true,
                Message = AccountMessage.MSG003                

            }).FirstOrDefault();

            if (deposit == null)
            {
                deposit = new ServiceResponse
                {
                    AccountNumber = accountNumber,
                    Successful = false,
                    Message = AccountMessage.MSG004
                };
            }
            return deposit;
        }

        public ServiceResponse InvokeWithdraw(long accountNumber, decimal Amount, string Currency)
        {
            ObjectParameter result = new ObjectParameter("Result", typeof(Int32));
            var withdraw = db.InsertWithdraw(accountNumber, Amount, Currency, result).Select(x => new ServiceResponse
            {
                AccountNumber = x.AccountNumber,
                Balance = x.Balance,
                Currency = x.CurrencyCode,
                Successful = true,
                Message = AccountMessage.MSG005
            }).FirstOrDefault();

            if (int.Parse(result.Value.ToString()) == -1)
            {
                withdraw = new ServiceResponse
                {
                    AccountNumber = accountNumber,
                    Successful = false,
                    Message = AccountMessage.MSG006
                };
            }

            return withdraw;
        }
    }
}
