namespace ProofOfConcept.WcfService.DataContract
{
    using System.Runtime.Serialization;
    [DataContract]
    public class ServiceResponse
    {
        int accountNumber;      
        decimal balance;
        string currency;
        bool successful = false;
        string code;
        string message;

        [DataMember]
        public int AccountNumber
        {
            get { return accountNumber; }
            set { accountNumber = value; }
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
        public bool Successful
        {
            get { return successful; }
            set { successful = value; }
        }

        [DataMember]
        public string Code
        {
            get { return code; }
            set { code = value; }
        }

        [DataMember]
        public string Message
        {
            get { return message; }
            set { message = value; }
        }
    }
}