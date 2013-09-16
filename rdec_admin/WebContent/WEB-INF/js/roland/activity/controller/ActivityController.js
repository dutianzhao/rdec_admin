Ext.define("LD.controller.ActivityController",{
	extend:'Ext.app.Controller',
	init:function(){
		var me = this;
		this.getGrid = function(buttion){
			return Ext.getCmp('activity_list_grid');
		};
		this.control({
			"activityList button[id=save_activity]":{
				click:function(grid, record){
					gird = me.getGrid(grid)
					Ext.create('Ext.ux.UpdateGridStatus').updateGridComboBox(gird);
				}
			},
			"activityList button[id=insert_activity]":{
				click:function(){
					Ext.widget("addActivity").show();
				}
			},
			"activityList button[id=edit_activity]":{
				click:function(grid, record)
				{
					grid = me.getGrid(grid);
					var gridStore = grid.getStore();
					var modelList = grid.getSelectionModel().getSelection();
					if(modelList.length != 1)
					{
						Ext.create("Ext.ux.UtilShowResult").showResultError("请选择1条修改的数据,您现在选择的是["+modelList.length+"]个");
						return false;
					}
					var showWin = Ext.widget("editActivity");
					var index = gridStore.find("id",modelList[0].data.id);
					showWin.items.get(0).getForm().loadRecord(gridStore.getAt(index));
        			showWin.show();
				}
			}
		});
	},
	views:[
		'ActivityView','AddActivityView','EditAvtivityView'
	],
	stores :[
		'ActivityStore'
	]
})