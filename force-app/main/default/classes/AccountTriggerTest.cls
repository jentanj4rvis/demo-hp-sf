@isTest
public class AccountTriggerTest {

    @isTest
    public static void testAccountShippingState() {
    
        List<Account> testAccounts = new List<Account>();
        
        for (Integer i = 0 ; i <= 200 ; i++) {
            testAccounts.add(new Account(
                Name = 'TestAcc' + i,
                BillingState = 'CA'
            ));
        }
        
        insert testAccounts;
        
        testAccounts = [SELECT Id, ShippingState FROM Account];
        System.assert(!testAccounts.isEmpty());
        for (Account assertAcc : testAccounts) {
            System.assertEquals('CA', assertAcc.ShippingState);
        }

    
    }

}