namespace ProofOfConcept.Core.ViewModels
{
    public class BalanceViewModel
    {
        public long AccountNumber { get; set; }
        public decimal? Balance { get; set; }
        public string Currency { get; set; }
        public bool Successful { get; set; }
        public string Message { get; set; }
    }
}
