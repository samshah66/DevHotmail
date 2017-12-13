trigger Account_SalesF on Account (before insert, before update) {
For ( Account Acc  :Trigger.new)
    {
        If (Acc.Parent.Name==NULL && Acc.id != '001d000000CzGzd') 
        {     
        Acc.Parentid='001d000000CzGzd';
        
        }    
    }
}