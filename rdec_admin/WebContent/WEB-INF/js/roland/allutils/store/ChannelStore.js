Ext.define("LD.store.ChannelStore",{
	extend:'Ext.data.Store',
	model:Ext.create('Ext.ux.modelFactory').getModelByName("ChannelType"),
	proxy:{
		api:{
			delete_grid:contextPath + '/all_util/delete_channel_type',
			save_or_update:contextPath+'/all_util/save_or_update_channel_type'
		},
		type:'ajax',
		url: contextPath + '/all_util/list_channel_type',
		reader:{
			type:'json'
		},
		writer:{
			type:'json'
		}
	},
	autoLoad:true
});