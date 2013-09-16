Ext.define("Ext.ux.RolandStatus",{
	alias: 'plugin.rolandStatus',
	
	rolandStatus:function(typeId,nameId,labelName){
		return {
				name : nameId,
			    fieldLabel : labelName,
				blankText : labelName+'不能为空',
				xtype:'combo',
				queryMode : 'local',
				store:new Ext.create("Ext.data.Store",{
						model : Ext.create('Ext.ux.modelFactory').getModelByName("Status"),
						proxy:
						{
							type:'ajax',
							url: contextPath + '/util/selStatus?typeId='+typeId,
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
	},
	rolandStatusGrid:function(typeId){
	  var gridByComboBox = Ext.create("Ext.form.ComboBox",{  
			typeAhead: true,
	        triggerAction: 'all',
	        queryMode : 'local',
	        editable: false,
	        store: Ext.create('Ext.data.Store', { 
	        	singleton : true, 
	        	model : Ext.create('Ext.ux.modelFactory').getModelByName("test.TestDto"),
			    proxy:
			    {
			    	type:'ajax',
					url: contextPath + '/util/selStatusByGrid?typeId='+typeId,
					reader:{
						type:'json'
					}
			    }
	        }),
	        valueField: 'id',
	        displayField: 'name'
	     })
	     return gridByComboBox;
	},
	rolandEditStatus:function(value,comboStore)
	{
		var index = comboStore.find('id',value);  
		if(index==-1)
			return null;  
		else{  
			 var record = comboStore.getAt(index).get('name');   
			return record;   
		}
	}
});








