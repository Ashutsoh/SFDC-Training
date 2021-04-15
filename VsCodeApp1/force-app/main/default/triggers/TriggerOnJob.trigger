trigger TriggerOnJob on Job_Ashutosh__c (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
     if(Trigger.IsBefore){
         //Task03
        if(Trigger.IsDelete){
            CandidateTriggerHelperClass.isActive(Trigger.old);
        }
        
         if(Trigger.IsUpdate){
                          //Task04
            // CandidateTriggerHelperClass.deactivateStatus(Trigger.new);
           
             //Task06
             CandidateTriggerHelperClass.activateStatus(Trigger.new);
         }
    }
}