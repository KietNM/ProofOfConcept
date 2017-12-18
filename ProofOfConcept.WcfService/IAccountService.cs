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
        ServiceResponse GetBalance(int account);      

        [OperationContract]
        [WebInvoke(Method = "PUT", UriTemplate = "account/deposit", RequestFormat = WebMessageFormat.Json)]
        ServiceResponse InvokeDeposit(Transaction transaction);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "account/withdraw", RequestFormat = WebMessageFormat.Json)]
        ServiceResponse InvokeWithdraw(Transaction transaction);
    }
}
