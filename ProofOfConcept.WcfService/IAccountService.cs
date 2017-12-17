 namespace ProofOfConcept.WcfService
{
    using DataContract;
    using System.ServiceModel;
    using System.ServiceModel.Web;

    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
 
    public interface IAccountService
    {
        [OperationContract]
        [WebGet]
        RequestResponse GetBalance(int accountNumber);

        [OperationContract]
        [WebInvoke(Method = "PUT", RequestFormat = WebMessageFormat.Json)]
        RequestResponse InvokeDeposit(int accountNumber, decimal amount, string currency);

        [OperationContract]
        [WebInvoke(Method = "PUT", RequestFormat = WebMessageFormat.Json)]
        RequestResponse InvokeWithdraw(int accountNumber, decimal amount, string currency);
    }
}
