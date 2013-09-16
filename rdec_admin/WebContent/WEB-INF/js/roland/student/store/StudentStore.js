Ext.define("LD.store.StudentStore",{
	extend:'Ext.data.Store',
	model : Ext.create('Ext.ux.modelFactory').getModelByName("Student"),
	proxy:
	{
		type:'ajax',
		url: contextPath + '/student/list_student',
		reader:{
			type:'json',
			root: 'topics',
            totalProperty: 'totalCount'
		}
	},
	groupField:'schoolName',
	autoLoad : true
})