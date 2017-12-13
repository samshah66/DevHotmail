trigger RKContDesc on Contact (before insert, before update) {

     for (Contact continLoop: Trigger.new)
         {
            continLoop.Description = 'I love Saleforce'; 
         }
}