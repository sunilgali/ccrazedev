trigger ClosedOpportunityTrigger on Opportunity (After Insert , After Update) {
    
        List<Task> tasks = new List<Task>();
        for(Opportunity op : Trigger.New){
            if(op.StageName == 'Closed Won'){
                Task t = new Task();
                t.Subject = 'Follow Up Test Task';
                t.WhatId = op.Id;
                tasks.add(t);
            }
        }
        insert tasks;
}