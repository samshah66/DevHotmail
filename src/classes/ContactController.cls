public with sharing class ContactController {

    public ApexPages.StandardController controller; 


    Public Contact cont= new Contact ();
    public Contact getcont()
    {
        return cont;
    }

    Public String FirstName {get; set;}
    Public String LastName {get; set;}  


    public ContactController(ApexPages.StandardController Controller)
    {
        Cont = (Contact)Controller.getRecord(); 
        this.controller=Controller;  
    } 
    public PageReference save() {
      insert Cont; 
      return null;
    }    
}