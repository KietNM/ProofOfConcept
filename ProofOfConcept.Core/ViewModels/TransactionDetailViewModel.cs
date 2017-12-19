using System;

namespace ProofOfConcept.Core.ViewModels
{
    public class TransactionDetailViewModel
    {
        public int AccountNumber;
        public decimal Amount;
        public string Currency;    
        public DateTime TransactionDate;
        public string Type;
    }
}
