namespace ProofOfConcept.Core.ViewModels
{
    using System;
    public class TransactionDetailViewModel
    {
        public int AccountNumber { get; set; }
        public decimal Amount { get; set; }
        public string Currency { get; set; } 
        public DateTime TransactionDate { get; set; }
        public string Type { get; set; }
    }
}
