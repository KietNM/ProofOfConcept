namespace ProofOfConcept.WcfService.DataContract
{
    using System.Runtime.Serialization;
    [DataContract]
    public class Transaction
    {
        int accountNumber;       
        decimal amount;
        string currency;
        string type;

        [DataMember]
        public int AccountNumber
        {
            get { return accountNumber; }
            set { accountNumber = value; }
        }

        [DataMember]
        public decimal Amount
        {
            get { return amount; }
            set { amount = value; }
        }

        [DataMember]
        public string Currency
        {
            get { return currency; }
            set { currency = value; }
        }

        [DataMember]
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
    }
}