namespace ProofOfConcept.Services.Implementation
{
    using Core.ViewModels;
    using Web.AccountService;
    public class AccountService : IAccountService
    {
        public BalanceViewModel GetAccountBalance(long account)
        {
            return new BalanceViewModel();
        }
    }
}
