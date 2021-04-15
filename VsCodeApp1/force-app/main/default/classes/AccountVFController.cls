public class AccountVFController {

    public List<sObject> records{get;set;}
    public List<String> fields{get;set;}
    
    public List<Candidate_Ashutosh__c> candidateRecords{get; set;}


     public List<Job_Ashutosh__c> job{get; set;}
   
    public AccountVFController(){
        Id id=ApexPages.currentPage().getParameters().get('id');
         records= [Select Name,Job_Type__c,No_Of_Position__c FROM Job_Ashutosh__c WHERE Id =:id];
        fields = new List<String>{ 'Name','No_Of_Position__c','Job_Type__c'};

         job= [select Job_Type__c from Job_Ashutosh__c where Id=:id ];
    	
         candidateRecords=[select First_Name__c, Last_Name__c, Email__c, Status__c, Name__c  from Candidate_Ashutosh__c where Name__c=:job];
    
    }

}