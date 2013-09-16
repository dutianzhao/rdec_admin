Ext.define("LD.controller.CompetController",{
	extend:'Ext.app.Controller',
	init:function(){
		this.gerGridObj = function(buttion){
			return Ext.getCmp('dept-grid');
		};
		this.getTreeObj = function(buttion){
			return  Ext.getCmp('compet-tree');
		};
		this.control({
			'competList button[id=save_operation]':{
				click:function(operation)
				{
					var rightGrid = Ext.getCmp('center-grid');
					
					rightGrid.removeAll(true);
					
					var mainTree = Ext.getCmp('main_layout_panel');
					mainTree.remove(mainTree.items.get(0),true);
					
					rightGrid.add(Ext.widget('operationList'));
					rightGrid.doLayout(true);
					
				}
			},
			'competList button[id=add_grid_row]':{
				click:function(addButton){
				    //得到tree
				    var tree = this.getTreeObj(addButton);
				    var grid = this.gerGridObj(addButton);
				    
				    var checkedRecords = tree.getSelectionModel().getSelection(); //获得选中的树的对象
				    
				    var parentId = 0;
				    
				    var modelObj = [{
				    	id:'',
				        name: '名称',
		       			linkUrl: '/null',
		       			ioc :'/',
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
			"competList button[id=save_compet]":{
				click:function(saveButton)
				{
					var grid = this.gerGridObj(saveButton);
					var tree = this.getTreeObj(saveButton);
					Ext.create("Ext.ux.AddGridUtil").doSave(grid,tree);
			//		gridViewStore.sync();//数据与后台同步
				}
			},
			"competList button[id=delete_compet]":{
				click:function(delButton)
				{
					var grid = this.gerGridObj(delButton);
					var tree = this.getTreeObj(delButton);
					Ext.create("Ext.ux.AddGridUtil").doDelete(grid,tree);
				}
			}
		})
	},
	views:['MainLayout','CompetList'],
	stores:['CompetenceStore']
})