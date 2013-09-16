Ext.define("Ext.ux.UpdateGridStatus",{
	alias : 'plugin.updateGridStatus',
	updateGridComboBox:function(grid)
	{
		var utilShowMsg = Ext.create("Ext.ux.UtilShowResult");
		var gridStore = grid.getStore();
		var records = gridStore.getUpdatedRecords();
		var data = [];
		
		if(records.length <= 0)
		{
			 utilShowMsg.showResultError('你没有修改任何数据！');
			 return false;
		}
		
		Ext.Array.each(records,function(model){
			var dataString = model.data.id + "/" + model.data.statusId
			data.push(dataString);
		});
		Ext.Ajax.request({
			async:false,
			method : 'POST',
	        url: gridStore.getProxy().api['update_grid_combobox'], 
	        params:{data:Ext.encode(data)},
	        success:function(response, opts)
	        {
	            var returnMsg = Ext.JSON.decode(response.responseText);
	            if(returnMsg.success)
	            {
	            	utilShowMsg.showResultMsg('操作成功！');
	                Ext.Array.each(records,function(model){
						 model.commit();
					});
	               
	            }else
	            {
	                utilShowMsg.showResultError(returnMsg.errors);
	            }
		   	}
		 })
	}
})