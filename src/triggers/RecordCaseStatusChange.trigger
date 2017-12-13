trigger RecordCaseStatusChange on Case (before update) {

// Capture and store previous Status of the case in to new PriorStatus field when a case is updated or the status is changed 
    
// Capture list of updated Cases

          // Your trigger code here
// Perform SOQL query outside of the for loop.
// This SOQL query runs once for all items in Trigger.new.
/*
if(triggerCount.getRunTimes() < 2){


List<Case> caseItems =
[SELECT Id,CaseNumber, Status, PriorStatus__c FROM Case WHERE Id IN :Trigger.newMap.KeySet()];
for( Case c : caseItems) {

c.PriorStatus__c = c.Status;

} 
triggerCount.setRunTimes();

update caseItems;
   
   }
*/   
}