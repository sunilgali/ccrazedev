({
	clickReimbursed : function(component, event, helper) {
        var updateEvent  = component.getEvent("updateExpense");
        updateEvent.setParams({"expense": component.get("v.expense")});
        updateEvent.fire();
	}
})