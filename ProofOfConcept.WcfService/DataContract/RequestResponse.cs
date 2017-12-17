namespace ProofOfConcept.WcfService.DataContract
{
    using System.Runtime.Serialization;
    [DataContract]
    public class RequestResponse
    {
        int accountNumber;
        bool successful = false;
        decimal balance;
        string currency;
        string message;

        [DataMember]
        public int AccountNumber
        {
            get { return accountNumber; }
            set { accountNumber = value; }
        }

        [DataMember]
        public bool Successful
        {
            get { return successful; }
            set { successful = value; }
        }

        [DataMember]
        public decimal Balance
        {
            get { return balance; }
            set { balance = value; }
        }

        [DataMember]
        public string Currency
        {
            get { return currency; }
            set { currency = value; }
        }

        [DataMember]
        public string Message
        {
            get { return message; }
            set { message = value; }
        }
    }
}