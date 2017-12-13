trigger RKSFDCacct on Account (before insert) 
{
    
  //  Account Acc = [Select Id from Account where Name = 'Salesforce.com' LIMIT 1];
    
        String SFDC = [Select Id, Name from Account where Name = 'Salesforce.com' LIMIT 1].Name;

    for (Account sfdcinloop: Trigger.new)
      {
       if (sfdcinloop.Name == 'Salesforce.com' && sfdcinloop.Name == SFDC)
           {
                     sfdcinloop.Name.addError('Salesforce.com account already exists, so cannot create again');
           }
      
       }
}