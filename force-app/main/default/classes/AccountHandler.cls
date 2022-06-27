public class AccountHandler {
    public static Account insertNewAccount(String name) {
        try {
            if (String.isBlank(name)) {
                return null;
            }
            Account accountRecord = new Account(Name = name);
            insert accountRecord;
            return accountRecord;
        } catch(DmlException e) {
            return null;
        }
    }
}