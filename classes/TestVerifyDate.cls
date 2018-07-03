@isTest
public class TestVerifyDate {
    
    @isTest 
    static void testDateInRange() {
        Date d1 = Date.toDay();
        Date d2 = d1.addDays(15);
        Date d = VerifyDate.CheckDates(d1 , d2);
        System.assertEquals(d2, d);
        
    }

    @isTest 
    static void testDateOutRange() {
        Date d1 = Date.toDay();
        Date d2 = d1.addDays(45);
        Date d = VerifyDate.CheckDates(d1 , d2);
        
        Integer totalDays = Date.daysInMonth(d1.year(), d1.month());
		Date lastDay = Date.newInstance(d1.year(), d1.month(), totalDays);
        
        
        System.assertEquals(lastDay, d);
    }

}