public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer i , String lName){
        List<Contact> cons = new List<Contact>();
        for(Integer j = 0; j < i; j++){
            Contact c = new Contact();
            c.LastName = lName;
            c.FirstName = 'Test '+j;
            cons.add(c);
        }
        return cons;
    }

}