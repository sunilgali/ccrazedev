public class ContactAndLeadSearch{

    public static List<List< SObject>> searchContactsAndLeads(String searchStr){
    
        List<List< SObject>> objs = [FIND :searchStr IN NAME FIELDS RETURNING LEAD , CONTACT ];
        return objs;

    }

}