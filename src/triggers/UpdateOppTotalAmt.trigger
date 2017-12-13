trigger UpdateOppTotalAmt on Opportunity (before update, after insert) {

for(Opportunity OppInLoop: Trigger.New)

        {
        If(OppInLoop.Name!=Null && (OppInLoop.Amount_A__c <> NULL && OppInLoop.Amount_B__c<>NULL) )
         
              OppInLoop.Amount_C__c= OppInLoop.Amount_A__c + OppInLoop.Amount_B__c;

        }
}