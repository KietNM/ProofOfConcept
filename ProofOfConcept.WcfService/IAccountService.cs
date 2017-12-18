 namespace ProofOfConcept.WcfService
{
    using DataContract;
    using System.ServiceModel;
    using System.ServiceModel.Web;

    [ServiceContract]
    public interface IAccountService
    {
        [OperationContract]
        [WebGet(UriTemplate = "account/{account}")]
        RequestResponse GetBalance(int account);      

        [OperationContract]
        [WebInvoke(Method = "PUT", UriTemplate = "account/deposit", RequestFormat = WebMessageFormat.Json)]
        RequestResponse InvokeDeposit(Transaction transaction);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "account/withdraw", RequestFormat = WebMessageFormat.Json)]
        RequestResponse InvokeWithdraw(Transaction transaction);
    }
}
