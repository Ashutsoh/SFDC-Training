public class JobCustomController {
public Job_Ashutosh__c Job {get; private set;}
   
   public JobCustomController(){
       Id id=ApexPages.currentPage().getParameters().get('id');
       Job = (id==null)? new Job_Ashutosh__c():[SELECT Name, Active__c, Cerfication_list__c, 
       Job_Type__c, Description__c, Expires_On__c, Hired_Applicants__c, Manager__c, 
       Name__c, No_Of_Position__c, Qualification_Required__c, Required_Skill__c,
       Salary_Offered__c, Total_Applicants__c   FROM Job_Ashutosh__c WHERE Id=:id];
   }
   
       public PageReference save()
       {
           try{
               upsert(Job);
           }
           catch(System.DMLException e){
               ApexPages.addMessages(e);
               return null;    
           }
           PageReference redirectSuccess=new ApexPages.StandardController(Job).view();
           return redirectSuccess;
       }
}