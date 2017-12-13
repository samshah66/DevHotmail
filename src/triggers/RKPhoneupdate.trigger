trigger RKPhoneupdate on Account (before insert) {

// Pass all new account record to be inserted in FOR loop
for (Account acctinloop: Trigger.new)
     {
  
   //Only populate phone if Phone field null
    
     if (acctinloop.phone == null){

        acctinloop.phone = '9768044441'; 
        }    

    }
}