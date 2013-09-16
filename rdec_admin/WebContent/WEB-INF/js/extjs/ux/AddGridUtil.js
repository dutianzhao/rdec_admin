Ext.define("Ext.ux.AddGridUtil",{
	doAdd:function(grid,modelObj)
	{
		var gridEdit = grid.getPlugin()
		var store = grid.getStore();
		gridEdit.cancelEdit();
		store.insert(0,modelObj);
        gridEdit.startEdit(0, 0);
	},
	doSave:function(grid,tree)
	{
		var utilShowMsg = Ext.create("Ext.ux.UtilShowResult");
		var gridStore = grid.getStore();
		
		var treeStore
		
		if(tree != null)
		{
			treeStore = tree.getStore(); 
		}
		
		
		/**获取修改了的数据**/
		var records = gridStore.getUpdatedRecords();
		/**获取新添加的数据**/
		var phantoms=gridStore.getNewRecords( ) ;
		/**将新添加的数据和修改的数据合并起来**/
		records=records.concat(phantoms);
		
		var data = [];
		
		if(records.length <= 0)
		{
			 utilShowMsg.showResultError('你没有修改任何数据！');
			 return false;
		}
		
		Ext.Array.each(records,function(model){
			data.push(model.data);
		});
		
		Ext.Ajax.request({
			async:false,
			method : 'POST',
	        url: gridStore.getProxy().api['save_or_update'], 
	        params:{data:Ext.encode(data)},
	        success:function(response, opts)
	        {
	            var returnMsg = Ext.JSON.decode(response.responseText);
	            if(returnMsg.success)
	            {
	            	utilShowMsg.showResultMsg('操作成功！');
	                if(tree != null)
	                {
	                //	var checkedRecords = tree.getSelectionModel().getSelection();
	               // 	var node = checkedRecords[0];
	                	treeStore.reload();
	              //  	tree.expandNode(node);
	                }
	               gridStore.reload();
	            }else
	            {
	               utilShowMsg.showResultError(returnMsg.errors);
	            }
		   	}
		 })
	},
	doDelete:function(grid,tree)
	{
		var utilShowResult = Ext.create("Ext.ux.UtilShowResult");
		
		var gridStore = grid.getStore();
		
		var treeStore
		
		if(tree != null)
		{
			treeStore = tree.getStore(); 
		}
		
		var modelList = grid.getSelectionModel().getSelection();
		
		if(modelList.length < 1)
		{
			utilShowResult.showResultError('请选择一条数据再删除');
		}else
		{
			Ext.Msg.confirm("确认信息", "你确认删除这" +modelList.length+"条数据吗", function(button, text) {  
            if (button == "yes") 
            { 
				var data = [];
				Ext.Array.each(modelList,function(model){
					data.push(model.data.id);
				});	
				Ext.Ajax.request({
					method : 'POST',
				    url: gridStore.getProxy().api['delete_grid'], 
				    params:{data:data.join(",")},
				    success:function(response, opts)
				    {
				        var returnMsg = Ext.JSON.decode(response.responseText);
				        if(returnMsg.success)
				        {
				           parent.Ext.example.msg("友情提示",'删除成功！');
				           Ext.Array.each(modelList, function(record) {  
			                    gridStore.remove(record);// 页面效果  
			               }); 
			               if(tree != null)
						   {
								treeStore.reload();
						   }
				          
					    }else
					    {
					    	utilShowResult.showResultError(returnMsg.errors);
					    }
					}
				 })               		 			
             }});
						
		}
	}
})