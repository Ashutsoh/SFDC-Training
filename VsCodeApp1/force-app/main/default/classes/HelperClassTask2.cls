public class HelperClassTask2 {
    public static void createDate(List<Candidate_Ashutosh__c>lc){
        for(Candidate_Ashutosh__c a:lc){
            if(a.Application_Date__c!=System.today())
               // a.addError('date must br todays date');
                a.Application_Date__c=system.today();
        }   
    }
}