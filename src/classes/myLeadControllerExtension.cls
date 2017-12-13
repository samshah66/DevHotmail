public with sharing class myLeadControllerExtension {

     Public final Lead ld;
     
     Public String firstName{get; set;}
     
     Public String lastName{get; set;}
     
     Public String resultString{get;set;}
     
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    
    ApexPages.StandardController stdController;
    
    public myLeadControllerExtension(ApexPages.StandardController stdController) {
        this.ld= (Lead)stdController.getRecord();
    }


    public List<lead> Leadrecord
    {
        get
        {
            if (Leadrecord == null)
            {
                Leadrecord= [Select Name, lastname, firstname, Send_Email_to_the_Owner__c from lead where Id = : ld.Id];
            }
            return Leadrecord;
        }
        set;
    }


    public List<contact> matchContacts
    {
        get
        {
            if (matchContacts == null)
            {
                matchContacts = [Select Name, lastname, firstname, email, leadsource, account.name, account.site, phone, department, contact.owner.name from contact Limit 5];
            }
            return matchContacts;
        }
        set;
    }


   public List<account> matchAccounts
    {
        get
        {
            if (matchAccounts == null)
            {
                matchAccounts = [Select Name, BillingStreet, BillingCity, BillingCountry, AccountSource, BillingPostalCode, UK_Region_Org__c, Bag_Id__c, TPA_ID__c, account.owner.name from account order by createddate desc limit 5];
            }
            return matchAccounts;
        }
        set;
    }

    Public List<Lead> getLeadRecord(){
        List<Lead> matchAccounts = [Select Name, lastname, firstname, Company, Send_Email_to_the_Owner__c from lead where Id = : ld.Id];
        return LeadRecord;
    }



    Public List<contact> getmatchContacts(){
        List<contact> matchContacts = [Select Name, lastname, firstname, email, leadsource, account.name, account.site, phone, department, contact.owner.name from contact Limit 5];
        return matchContacts;
    }
 
    Public List<account> getmatchAccounts(){
        List<account> matchAccounts = [Select Name, BillingStreet, BillingCity, BillingCountry, AccountSource, BillingPostalCode, UK_Region_Org__c, Bag_Id__c, TPA_ID__c, account.owner.name from account order by createddate desc limit 5];
        return matchAccounts;
    }





//Create custom method for button Find Duplicates

    Public Pagereference ConvertLead() {
        return new Pagereference('/apex/myConvertLeadPage?scontrolCaching=1&id=' + this.ld.Id);
    }



    public List<selectOption> getaccts() {
        List<selectOption> options = new List<selectOption>(); 
        //new list for holding all of the picklist options
        //options.add(new selectOption('', '- None -')); 
        //options.add(new selectOption('', )); 
        
        //add the first option of '- None -' in case the user doesn't want to select a value or in case no values are     returned from query below
        //for (Account account : [SELECT Id, Name FROM Account]) { 
        
        for (Account account : matchAccounts) { 
            //query for Account records 
            options.add(new selectOption(account.id, account.Name)); 
            //for all records found - add them to the picklist options
            }
            return options; //return the picklist options
            }


    public void savingCheckBoxValue() {
            
            Contact mcontact = new Contact() ;
          
            mContact.FirstName = firstname;
            mContact.LastName = lastname;
            
       
            }
            
    
    //Create custom method for button Find Duplicates

    Public Pagereference FinddupContacts() {
    
        System.debug('The FirstName selected is  : ' + firstName);
        System.debug('The LastName selected is  : ' + lastName);
    
        if (firstName  == 'true') {
            if(resultString != null) {
                resultString = resultString+ ' ' + firstName;
               }
               else {
                    resultString = '';
                  }
                     System.debug('The LastName selected is  : ' + lastName); 
               }
            
               
       
       
       
       
        List<contact> dupcontact = [Select Name, lastname, firstname, email, leadsource from contact Limit 2];
        List<account> dupAccount = [Select Name, BillingStreet, BillingCity, BillingCountry, AccountSource from account limit 2];
        return null;
    }




}