trigger leadDuplicatePreventer on Lead (before insert, before update, after insert) {
  if (Trigger.isBefore) { 
	Map<String, Lead> leadMap = new Map<String, Lead>();
  } else if (Trigger.isAfter)  { 
  	// after leads are inserted
  	List<Task> followupTasks = new List<Task>(); // build list in memory
  	for (Lead lead : System.Trigger.new) {
		Task task = new Task(
		  WhoId = lead.Id, 
		  Description = 'Call this lead.', 
		  Priority = 'High', 
		  ReminderDateTime = System.now().addDays(2), 
		  Status = 'Not Started', 
		  Subject = 'New Lead');
		followupTasks.add(task);   // add to list
  	}

        // insert the entire list
  	insert followupTasks;  // NOTE: this is outside the above loop, only one insert is needed

 } // end of isAfter

}// end of trigger