@isTest
public class JobTriggerTestClass {
    @isTest public Static void checkActiveJob(){
        Job_Ashutosh__c obj = new Job_Ashutosh__c();
        obj.Name = 'Manager';
        obj.Manager__c = '0035g000002EbgR';
        obj.No_Of_Position__c = 6;
         upsert obj;
        Test.startTest();
        try{
           Delete obj;
        }catch(Exception e){
            System.debug('==exception=='+e.getMessage());
        }
        Test.stopTest();
    
    System.assert(obj.Active__c == true ,'This job is active and can not be deleted check testcase');
    }
    @isTest public static void deactivateJob(){
        Candidate_Ashutosh__c objCandidate = new Candidate_Ashutosh__c();
         objCandidate.First_Name__c = 'leo';
       objCandidate.Last_Name__c = 'vinci';
       objCandidate.Email__c = 'leo@gmail.com';
       objCandidate.Country__c = 'Australia';
       objCandidate.State__c = 'Western Australia';
      objCandidate.Status__c = 'Hired';
       objCandidate.Expected_Salary__c = 4352;
    objCandidate.Name__c = 'a025g000002xAwh';
       insert objCandidate;
        Test.startTest();
        Job_Ashutosh__c jObj = new Job_Ashutosh__c();
        try{
            jObj.Active__c = false;
            update jObj;
        }catch(Exception e){
            System.debug('test deactive job'+e.getMessage());
        }
        Test.stopTest();
        System.assert(jObj.Hired_Applicants__c == jObj.No_Of_Position__c);
    }
}