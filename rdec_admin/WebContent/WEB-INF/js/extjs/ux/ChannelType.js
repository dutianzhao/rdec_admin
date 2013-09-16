Ext.define("Ext.ux.ChannelType",{
	
	channelTypeByParent:function(channelId,nameId,labelName)
	{
		return{
			name : nameId,
			fieldLabel : labelName,
			blankText : labelName+'不能为空',
			xtype:'combo',
			queryMode : 'local',
			store:Ext.create("Ext.data.Store",{
			  model : Ext.create('Ext.ux.modelFactory').getModelByName("Activity"),
			  proxy:
				{
					type:'ajax',
					url: contextPath + '/all_util/list_channel_type?channelId='+channelId,
					reader:{
						type:'json'
					}
				},
				autoLoad : true
			}),
			displayField : 'name',
			valueField : 'id',
			emptyText : '请选择',// 默认值
			triggerAction : 'all',
			editable : false
		}
	}
});