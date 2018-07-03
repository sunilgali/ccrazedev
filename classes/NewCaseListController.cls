public class NewCaseListController {
    
    public List<Case> getNewCases(){
        String status = 'New';
        //List<Case> cases = Database.query('SELECT ID , CaseNumber from Case where status = :status');
        List<Case> cases = [SELECT ID , CaseNumber from Case where status = :status];
        return cases;
    }

}