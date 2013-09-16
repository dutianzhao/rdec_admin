Ext.define("Ext.ux.UserTree",{
	alias : 'plugin.userTree',
	extend : 'Ext.tree.Panel',
	rootVisible : false,
	displayField : 'text',
	animate : true,
	id:'compet-tree',
	store : new Ext.create("Ext.data.TreeStore", 
		{
			model : Ext.create('Ext.ux.modelFactory').getModelByName("MenuTreeDTO"),
			method:'POST',
			proxy : 
			{
				type : 'ajax',
				url : contextPath + '/competence/userCompetTree',
				reader : 'json'
			}
		})

})