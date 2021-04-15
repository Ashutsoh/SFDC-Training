public class customController {
    public pageReference saveRecord(){
        update account;
        return null;
    }
    private final Account account;
    public customController(){
        account=[select id,Name,Site from Account where Id=: ApexPages.currentPage().getParameters().get('id')];
    }
    public Account getAccount(){
        return account;
    }
}