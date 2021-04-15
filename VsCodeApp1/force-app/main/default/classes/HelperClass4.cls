public class HelperClass4 {
    public static void deactivateJob(List<Job_Ashutosh__c>ls){
        for(Job_Ashutosh__c a:ls){
            if(a.No_Of_Position__c==a.Hired_Applicants__c){
                a.Active__c=false;
            }
        }    
    }
}