namespace ProofOfConcept.Core.ViewModels
{
    public class ResponseViewModel
    {
        public BalanceViewModel Balance;
        public TransactionMaster Transaction;
        public bool Successful { get; set; }
        public string Message { get; set; }
    }
}
