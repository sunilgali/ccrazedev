({
	setPacked : function(component, event, helper) {
		component.set("v.item.Packed__c" , true);
        
        /*var checkbox = component.get("v.item",true);
			checkbox.Packed__c = true;
		component.set("v.item",checkbox);
        */
        
        var btn = event.getSource();
        btn.set("v.disabled" , true);
	}
})