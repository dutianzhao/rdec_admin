Ext.define("LD.store.CourseStore",{
	extend:'Ext.data.Store',
	model : Ext.create('Ext.ux.modelFactory').getModelByName("Course"),
	alias: 'widget.cureseStore',
	proxy:
	{
		type:'ajax',
		url: contextPath + '/course',
		reader:{
			type:'json',
			root: 'topics',
            totalProperty: 'totalCount'
		}
	},
	autoLoad : true
})