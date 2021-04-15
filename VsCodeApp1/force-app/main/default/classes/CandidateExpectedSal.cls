public class CandidateExpectedSal {
    public static List<Candidate_Ashutosh__c>ca{get; set;}
    public static void checkSal(List<Candidate_Ashutosh__c> cl){
        for(Candidate_Ashutosh__c candidate:cl){
            if(candidate.Expected_Salary__c==null){
                candidate.addError('=============Expected Salary field is missing=============');
            }
        } 
    }
}