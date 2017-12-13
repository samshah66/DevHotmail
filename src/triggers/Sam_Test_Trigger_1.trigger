trigger Sam_Test_Trigger_1 on Lead (after insert, before insert) {
for (Integer i = 0, j = 0; i < 10; i++) {
System.debug(i+1);}
}