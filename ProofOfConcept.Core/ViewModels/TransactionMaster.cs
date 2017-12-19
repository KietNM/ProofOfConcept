namespace ProofOfConcept.Core.ViewModels
{
    using System.Collections.Generic;
    public  class TransactionMaster
    {
        public int AccountNumber;
        public string StartDate;
        public string EndDate;
        public decimal TotalDepsitAmount;
        public decimal TotalWithdrawAmount;
        public List<TransactionDetailViewModel> TransactionDetails;
    }
}
