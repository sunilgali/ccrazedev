public class AccountHandler{
    public static Account insertNewAccount(String accName){
        Account acc = null;

        try{
            acc  = new Account();
            acc.Name = accName;
            insert acc;
        }
        catch(DmlException e){
            acc = null;
        }
        return acc;
    }
}