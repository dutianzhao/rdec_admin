Ext.define("Ext.ux.SelectUtil",{
	alias: 'plugin.selectUtil',
	userGroup:function(nameId,labelName)
	{
		
		return {
				name : nameId,
			    fieldLabel : labelName,
				blankText : labelName+'不能为空',
				xtype:'combo',
				queryMode : 'local',
				store:new Ext.create("Ext.data.Store",{
						model : Ext.create('Ext.ux.modelFactory').getModelByName("competence.UserGroup"),
						alias: 'widget.schoolStatus',
						proxy:
						{
							type:'ajax',
							url: contextPath + '/competence/list_user_group',
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
				queryMode : 'local',
				selecOnFocus : true,
				forceSelection : true,
				allowBlank : false,
				typeAhead: true,
				editable : false,
				lazyRender: true
			 }
	}
});
