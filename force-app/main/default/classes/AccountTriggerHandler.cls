public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accounts) {
        for (Account accountRecord : accounts) {
            accountRecord.ShippingState = accountRecord.BillingState;
        }
    }
}