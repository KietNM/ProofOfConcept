 namespace ProofOfConcept.WcfService
{
    using Core.ViewModels;
    using DataContract;
    using System.ServiceModel;
    using System.ServiceModel.Web;

    [ServiceContract]
    public interface IAccountService
    {
        [OperationContract]
        [WebGet(UriTemplate = "account/{accountNumber}")]
        ServiceResponse GetBalance(long accountNumber);

        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "account/deposit", RequestFormat = WebMessageFormat.Json)]
        ServiceResponse InvokeDeposit(long accountNumber, decimal Amount, string Currency);

        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "account/withdraw", RequestFormat = WebMessageFormat.Json)]
        ServiceResponse InvokeWithdraw(long accountNumber, decimal Amount, string Currency);
    }
}
