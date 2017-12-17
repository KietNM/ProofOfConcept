namespace ProofOfConcept.WcfService
{
    using DataContract;
    public class AccountService : IAccountService
    {
        public RequestResponse GetBalance(int accountNumber)
        {
            return new RequestResponse();
        }

        public RequestResponse InvokeDeposit(int accountNumber, decimal amount, string currency)
        {
            return new RequestResponse();
        }

        public RequestResponse InvokeWithdraw(int accountNumber, decimal amount, string currency)
        {
            return new RequestResponse();
        }
    }
}
