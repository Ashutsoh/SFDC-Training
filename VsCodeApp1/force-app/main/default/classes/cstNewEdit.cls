public class cstNewEdit {
    public Account account{get;private set;}
    
    public cstNewEdit(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        account=(id==null)?new Account():[select name,phone,industry from Account where Id=:id];
    }
    public PageReference savecst(){
        try{
            upsert(account);
        }catch(System.DMLException e){
            ApexPages.addMessages(e);
            return null;
        }
        PageReference redirectSuccess=new ApexPages.StandardController(Account).view();
        return redirectSuccess;
    }
}