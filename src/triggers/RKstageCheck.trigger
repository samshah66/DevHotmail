trigger RKstageCheck on Opportunity (before update, before insert) {

for(Opportunity OppInLoop: Trigger.New)

        {
        If(OppInLoop.StageName == 'Closed Won')
         
              OppInLoop.Amount.addError('Amount field is required when stage is Closed Won');

        }
}