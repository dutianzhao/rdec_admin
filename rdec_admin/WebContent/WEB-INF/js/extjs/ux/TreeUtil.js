Ext.define("Ext.ux.TreeUtil",{
	alias : 'plugin.treeUtil',
	extend : 'Ext.tree.Panel',
	rootVisible : false,
	displayField : 'text',
	animate : true,
	id:'tree_util',
	store : new Ext.create("Ext.data.TreeStore", 
		{
			model : Ext.create('Ext.ux.modelFactory').getModelByName("MenuTreeDTO"),
			method:'POST',
			proxy : 
			{
				type : 'ajax',
				url:contextPath + '/all_util/list_channel_type_tree',
				reader : 'json'
			}
		})

})