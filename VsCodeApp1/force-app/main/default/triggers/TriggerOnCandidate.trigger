trigger TriggerOnCandidate on Candidate_Ashutosh__c (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
     if(Trigger.IsBefore){
         if(Trigger.IsInsert){
            //Task01
              CandidateTriggerHelperClass.checkSalary(Trigger.new);
            //Task01b
              CandidateTriggerHelperClass.jobIsActiveOrNot(Trigger.new);
            }
         if(Trigger.Isupdate){
              //Task04 no use
            //  CandidateTriggerHelperClass.jobStatusDeActive(Trigger.new);
            }
        }
     if(Trigger.IsAfter){
         //Task02
        if(Trigger.IsInsert){
            CandidateTriggerHelperClass.autoDate(Trigger.new);
            }
        }
}