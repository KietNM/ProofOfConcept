namespace ProofOfConcept.WcfService.DataContract
{
    using System.Runtime.Serialization;
    [DataContract]
    public class ServiceResponse
    {
        [DataMember]
        public long AccountNumber { get; set; }

        [DataMember]
        public decimal Balance { get; set; }

        [DataMember]
        public string Currency { get; set; }

        [DataMember]
        public bool Successful { get; set; }

        [DataMember]
        public string Code { get; set; }

        [DataMember]
        public string Message { get; set; }
    }
}