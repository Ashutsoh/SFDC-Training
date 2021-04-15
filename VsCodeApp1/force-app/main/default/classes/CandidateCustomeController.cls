public class CandidateCustomeController {
//public property
    public Candidate_Ashutosh__c candidate{ get;private set;}
//public constructor
    public CandidateCustomeController (){
        Id id=ApexPages.currentPage().getParameters().get('id');
        candidate=(id==null)?new Candidate_Ashutosh__c():[select Name, Salutation__c, Date_Of_Birth__c,
        First_Name__c,Last_Name__c,Full_Name__c,Email__c,Country__c,State__c,Application_Date__c,Status__c,
        Expected_Salary__c
         from Candidate_Ashutosh__c where Id=:id];
    }
 //define savecnd method returns pagereference
     public PageReference savecnd(){
         try{
             upsert(candidate);
         }catch(System.DMLException e){
             ApexPages.addMessages(e);
             return null;
         }
         PageReference pr=new ApexPages.standardController(Candidate).view();
         return pr;
     }   
    
}