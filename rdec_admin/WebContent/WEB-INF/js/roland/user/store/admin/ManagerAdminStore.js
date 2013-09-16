Ext.define("LD.store.admin.ManagerAdminStore",{
	extend:'Ext.data.Store',
	model : Ext.create('Ext.ux.modelFactory').getModelByName("ManagerAdmin"),
	alias: 'widget.adminStore',
	pageSize:100,
	proxy:
	{
		type:'ajax',
		url: contextPath + '/user/listManageAdmin',
		reader:{
			type:'json',
			root: 'topics',
            totalProperty: 'totalCount'
		}
	},
	autoLoad : true
});