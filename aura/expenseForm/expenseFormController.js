({
    clickCreateExpense: function(component, event, helper) {
        if(helper.validateExpenseForm(component)){
            var createEvent = component.getEvent("createExpense");
            createEvent.setParams({"expense": component.get("v.newExpense")})
            createEvent.fire();
        }
    },
})