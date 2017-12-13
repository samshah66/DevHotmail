@isTest

private class TestCaseCreation {
static testmethod void TestCreateCase() {
Case[] testCase = new Case[] { new Case (Origin = 'Web', Status = 'New')};
insert testCase;

testCase[0].Status = 'Escalated';

Test.startTest();
update testCase;
Test.stopTest();

}
}