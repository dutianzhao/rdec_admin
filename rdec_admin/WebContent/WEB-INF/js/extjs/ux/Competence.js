Ext.define("Ext.ux.Competence",{
	alias: 'plugin.competence',
	competence:function(){
			
			var clickPan = parent.Ext.getCmp('tabpanel').getActiveTab().getId();
			
			clickPan = clickPan.substr(7);
			
			var toolBar = '';
	        Ext.Ajax.request({
	        	method:'post',
	        	params:{
	        		competId:clickPan	
	        	},
				url: contextPath + '/competence/compet_operation',
				async:false,
				success: function(response)
				{
					toolBar =  eval(response.responseText);
				}
			});
		return toolBar
	}
});