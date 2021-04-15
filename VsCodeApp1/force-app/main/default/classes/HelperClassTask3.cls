public class HelperClassTask3 {
    public static void checkStatus(List<Job_Ashutosh__c> ls){
        for(Job_Ashutosh__c a:ls){
            if(a.Active__c==true){
                a.addError('==This Job is active and can not be deleted====');
            }
        }
    }
}