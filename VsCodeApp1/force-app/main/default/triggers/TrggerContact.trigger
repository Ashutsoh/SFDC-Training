trigger TrggerContact on Contact (before insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            System.debug('from vs code');
            ContactClass1.checkphone(Trigger.new);
        }
    }
}