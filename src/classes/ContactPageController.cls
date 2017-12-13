public with sharing class ContactPageController {
    public Contact Cont{get; private set;}
    public pagereference saveData(){
        //System.debug(datesFromCalendar);
        try {
            upsert(Cont);
            
            PageReference pref = new ApexPages.StandardController(cont).view();
            return pref;
            
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        // After Save, navigate to the default view page:
        return (new ApexPages.StandardController(cont)).view();
    }
}