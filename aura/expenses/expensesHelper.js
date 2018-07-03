({
    updateExpense: function(component , expense){
        this.saveExpense(component , expense);
    },
    
    saveExpense: function(component , expense , callback){
        var action = component.get("c.saveExpense");
        action.setParams({"expense": expense});
        if(callback){
            action.setCallback(this , callback);
        }
        $A.enqueueAction(action);
    },    

    
    createExpense: function(component, expense) {
        this.saveExpense(component , expense , function(response){
            var state = response.getState();
            if(component.isValid() && state === "SUCCESS"){
                var theExpenses = component.get("v.expenses");	 
                theExpenses.push(expense);
                component.set("v.expenses", theExpenses);
            }
        });
    },
    
})