Ext.define("LD.store.ActivityStore",{
	extend:'Ext.data.Store',
	model : Ext.create('Ext.ux.modelFactory').getModelByName("Activity"),
	proxy:
	{
		api:
		{
			update_grid_combobox:contextPath + '/activity/update_activity_status',
			update_or_add_avtivity : contextPath + '/activity/add_or_update_activity'
		},
		type:'ajax',
		url: contextPath + '/activity',
		reader:{
			type:'json',
			root: 'topics',
            totalProperty: 'totalCount'
		}
	},
	groupField:'schoolName',
	autoLoad : true
})