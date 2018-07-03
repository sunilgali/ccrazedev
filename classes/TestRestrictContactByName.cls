@isTest
public class TestRestrictContactByName {
    
    @isTest
    private static void testContactLastName(){
        Contact c1 = new Contact();
        c1.LastName = 'INVALIDNAME';
        Test.startTest();
        insert c1;
        Database.SaveResult result = Database.insert(c1);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals(result.getErrors()[0].getMessage() , 'The Last Name "INVALIDNAME" is not allowed for DML');
        
        Contact c2 = new Contact();
        c2.LastName = 'INVALIDNAME Gali';
        Test.startTest();
        insert c1;
        Database.SaveResult result1 = Database.insert(c2);
        Test.stopTest();
        
        System.assert(result1.isSuccess());
        System.assert(result1.getErrors().size() ==  0);
    }

}