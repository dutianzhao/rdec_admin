Ext.define('AM.store.Users', {
	extend: 'Ext.data.Store',
	storeId:'s_user',
	model:'AM.model.User',
	proxy:{
		type:'ajax',
		url:contextPath + '/user',
		reader:{
			type:'json'
		},
		writer:{
			type:'json'
		}
	},
	//分组属性
	groupField:'username',
	autoLoad:true
});