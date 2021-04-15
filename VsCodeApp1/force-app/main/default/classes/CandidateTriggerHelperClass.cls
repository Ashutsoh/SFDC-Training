public class CandidateTriggerHelperClass {
    //1a
    public static void checkSalary(List<Candidate_Ashutosh__c> lists){
        for(Candidate_Ashutosh__c candidateObj : lists){
            if(candidateObj.Expected_Salary__c == null){
                candidateObj.addError('===Expected Salary field is missing===');
            }
        }
    }
    //1b
    public static void jobIsActiveOrNot(List<Candidate_Ashutosh__c> clist){
        Map<Id, job_Ashutosh__c> checkActive = new Map<Id, job_Ashutosh__c>([
            SELECT Active__c FROM job_Ashutosh__c WHERE Active__c = false
            //get only perticular id record from url
        ]);
        for(Candidate_Ashutosh__c candidateObj : clist){
            if(checkActive.get(candidateObj.Name__c) != null){
                System.debug(checkActive.get(candidateObj.Name__c));
                candidateObj.addError('==This Job is not active. You can not apply for this job==');
            }
        }
    }
    //2
    public static void autoDate(List<Candidate_Ashutosh__c> clist){
        for(Candidate_Ashutosh__c candidateObj : clist){
            if(candidateObj.Application_Date__c != System.today()){
                DateTime dt = candidateObj.CreatedDate;
                candidateObj.Application_Date__c =date.newinstance(dT.year(), dT.month(), dT.day());
            }
        }
    }
    //3
    
    public static void isActive(List<Job_Ashutosh__c> jlist){
        for(Job_Ashutosh__c jobObj : jlist){
            if(jobObj.Active__c){
                jobObj.addError('===This Job is active and can not be deleted===');
            }
        }
    }
    //4
    /*
public static void deactivateStatus(List<Job_Ashutosh__c> jlist){
for(Job_Ashutosh__c jobObj : jlist){
if(jobObj.Hired_Applicants__c >= jobObj.No_Of_Position__c){
jobObj.Active__c = false;
}
}
}*/
    //5
    public static void sendEmail(List<Job_Ashutosh__c> jlist)
    {
        Job_Ashutosh__c jobObj1 =new Job_Ashutosh__c();
        Contact con = [Select Email,id,Name from Contact
                       where id=:jobObj1.Manager__c];//do not write query in for loop
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        for(Job_Ashutosh__c jobObj : jlist)
        {
            if(jobObj.Hired_Applicants__c == jobObj.No_Of_Position__c)
            {          
                
                Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
                List<String> sendTo = new List<String>();
                sendTo.add(con.Email);
                mail.setToAddresses(sendTo);
                
                mail.setSubject('Reached Vaccancy Limit!..');
                String body = 'All required candidate has been hired for this job on '+ jobObj.LastModifiedDate;
                
                mail.setHtmlBody(body);
                mails.add(mail);
                
                
            }
            
        }
        Messaging.sendEmail(mails);//not in for loop
    }
    //6
    public static void activateStatus(List<Job_Ashutosh__c> jlist){
        for(Job_Ashutosh__c jobObj : jlist){
            if(jobObj.No_Of_Position__c > jobObj.Hired_Applicants__c){
                jobObj.Active__c=true;
            }
        }
    }
    /*  //004
public static void jobStatusDeActive(List<Candidate_Ashutosh__c> ls){
for(Candidate_Ashutosh__c a:ls=[select Name__c ,Name__r.Hired_Applicants__c,Name__r.No_Of_Position__c from Candidate_Ashutosh__c ]){
if(a.Name__r.Hired_Applicants__c >= a.Name__r.No_Of_Position__c){
a.Name__r.Active__c	= false;
}
}
}*/
    
}