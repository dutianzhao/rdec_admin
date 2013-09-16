Ext.define("LD.controller.ChannelController",{
	extend:'Ext.app.Controller',
	init:function(){
		this.gerGridObj = function(buttion){
			return Ext.getCmp('dept-grid');
		};
		this.getTreeObj = function(buttion){
			return  Ext.getCmp('channel_tree');
		};
		this.control({
			'channelList button[id=add_grid_row]':{
				click:function(addButton){
				    //得到tree
				    var tree = this.getTreeObj(addButton);
				    var grid = this.gerGridObj(addButton);
				    
				    var checkedRecords = tree.getSelectionModel().getSelection(); //获得选中的树的对象
				    
				    var parentId = 0;
				    
				    var modelObj = [{
				    	id:'',
				        name: '名称',
		       			parentId:parentId
				    }];
				    
				    
				    if(checkedRecords.length != 1)
				    {
				    	Ext.Msg.confirm("确认信息", "你确认添加到一级权限吗？",function(button, text) {  
               		 		if (button == "yes") { 
               		 			Ext.create("Ext.ux.AddGridUtil").doAdd(grid,modelObj);
               		 		}})
				    	
				    }else
				    {
				    	modelObj[0].parentId = checkedRecords[0].data.id;
				    	Ext.create("Ext.ux.AddGridUtil").doAdd(grid,modelObj);
				    }
				}
			},
			"channelList button[id=save_compet]":{
				click:function(saveButton)
				{
					var grid = this.gerGridObj(saveButton);
					var tree = this.getTreeObj(saveButton);
					Ext.create("Ext.ux.AddGridUtil").doSave(grid,tree);
			//		gridViewStore.sync();//数据与后台同步
				}
			},
			"channelList button[id=delete_compet]":{
				click:function(delButton)
				{
					var grid = this.gerGridObj(delButton);
					var tree = this.getTreeObj(delButton);
					Ext.create("Ext.ux.AddGridUtil").doDelete(grid,tree);
				}
			}
		})
	},
	views:['MainLayout','ChannelList'],
	stores:['ChannelStore']
})