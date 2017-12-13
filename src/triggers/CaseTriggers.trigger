trigger CaseTriggers on Case (before update) 
{
    for(Case objCase : trigger.new)
    {
        if(objCase.Status != trigger.oldMap.get(objCase.Id).Status)
        {
            objCase.PriorStatus__c = trigger.oldMap.get(objCase.Id).Status;
        }
    }
}