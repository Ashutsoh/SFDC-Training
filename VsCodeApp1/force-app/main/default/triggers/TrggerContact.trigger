trigger TrggerContact on Contact (before insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            ContactClass1.checkphone(Trigger.new);
        }
    }
}