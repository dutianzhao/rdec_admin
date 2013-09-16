Ext.define("LD.store.SchoolStore",{
	extend:'Ext.data.Store',
	model : Ext.create('Ext.ux.modelFactory').getModelByName("School"),
	alias: 'widget.schoolListStore',
	proxy:
	{
		api:
		{
			update_grid_combobox:contextPath + '/school/update_school_status'
		},
		type:'ajax',
		url: contextPath + '/school/listSchool',
		reader:{
			type:'json'
		},
		writer:{
			type:'json'
		}
	},
	autoLoad : true
});