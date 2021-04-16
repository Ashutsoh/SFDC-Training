public class ContactClass1 {
    public static void checkphone(List<Contact> lc){
        for(Contact c : lc){
            if(c.Phone == null){
              c.addError('error on phone');            }
        }
    }
}