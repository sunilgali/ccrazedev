public class ContactSearch{

    public static List<Contact> searchForContacts(String name , String zip){
        List<Contact> contacts = [select id , phone from Contact where LastName = :name AND MailingPostalCode = :zip];
        return contacts;
    }

}