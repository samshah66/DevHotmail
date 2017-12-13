public class MyHelloWorld {
// added on server
// added on eclipse
// do sync added on server
public static void applyDiscount(Book__c[] books) {
for (Book__c b :books){
b.Price__c *= 0.9;
}
}
}