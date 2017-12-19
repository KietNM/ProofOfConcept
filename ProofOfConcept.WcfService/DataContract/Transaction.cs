namespace ProofOfConcept.WcfService.DataContract
{
    using System.Runtime.Serialization;
    [DataContract]
    public class Transaction
    {     
        [DataMember]
        public int AccountNumber { get; set; }

        [DataMember]
        public decimal Amount { get; set; }

        [DataMember]
        public string Currency { get; set; }

        [DataMember]
        public string Type { get; set; }
    }
}