namespace ProofOfConcept.Services.Interface
{
    using Core.ViewModels;
    public interface IAccountService
    {
        BalanceViewModel GetAccountBalance(long account);

      //  BalanceViewModel InvokeDeposit(long account);

     //   BalanceViewModel InvokeDeposit(long account);
    }
}