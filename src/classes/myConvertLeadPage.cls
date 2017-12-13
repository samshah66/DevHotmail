public with sharing class myConvertLeadPage {

     Public final Lead ld;
    
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    
    ApexPages.StandardController stdController;
    
    public myConvertLeadPage (ApexPages.StandardController stdController) {
        this.ld= (Lead)stdController.getRecord();
    }

    Public Pagereference ConvertLead() {

        return new Pagereference('/apex/myConvertLeadPage?scontrolCaching=1&id=' + this.ld.Id);
    }





}