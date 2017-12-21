namespace ProofOfConcept.Core.ViewModels
{
    using System;
    public class BalanceViewModel
    {
        public long AccountNumber { get; set; }
        public decimal Balance { get; set; }
        public string Currency { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}
