namespace ProofOfConcept.Core.ViewModels
{
    using System;
    using System.Collections.Generic;
    public  class TransactionMaster
    {
        public long AccountNumber { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public decimal TotalDepsitAmount { get; set; }
        public decimal TotalWithdrawAmount { get; set; }
        public List<TransactionDetailViewModel> TransactionDetails;
    }
}
