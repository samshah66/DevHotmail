@RestResource(urlMapping='/Opportunity/*')
global with sharing class OpportunityManager {
@HttpGet
global static Opportunity getOpportunityById() {
RestRequest req = RestContext.request;
String oppId = req.requestURI.substring(
req.requestURI.lastIndexOf('/')+1);
Opportunity result =
[SELECT Name, Amount, CloseDate, ExpectedRevenue
FROM Opportunity
WHERE Id = :oppId];
return result;
}
@HttpPost
global static String createOpportunity(String Name,
Decimal Amount, Date CloseDate, String LeadSource)
{
Opportunity o = new Opportunity (
Name=Name,
Amount=Amount,
CloseDate=CloseDate,
LeadSource=LeadSource
);
insert o;
return o.Id;
}
}