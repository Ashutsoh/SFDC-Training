public class cndAs {
    public Candidate_Ashutosh__c cndAs{get;private set;}
    public cndAs(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        cndAs=(id==null)?new Candidate_Ashutosh__c():[select First_Name__c from Candidate_Ashutosh__c where Id=:id];
    }
    public PageReference savecnd(){
        try{
            upsert(cndAs);
        }catch(System.DMLException e){
            ApexPages.addMessages(e);
            return null;
        }
          PageReference rs=new ApexPages.StandardController(cndAs).view();
        return rs;
    }
}