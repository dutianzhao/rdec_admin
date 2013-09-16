Ext.define("LD.controller.mainController",{
	extend:'Ext.app.Controller',
	init:function(){
		var me = this;
		this.control({
			'buttonPanel button[id=user_logout]':{
				click:function()
				{
					Ext.MessageBox.confirm('友情提示', '你确定要退出管理平台吗?',function(btn, text){
					    	if(btn == 'yes')
					    	{
					    		Ext.Msg.wait('正在退出请稍后...');
					    		Ext.Ajax.request({
								    url: contextPath + '/user/logout',
								     success:function(form,action)
				                    {
					   					window.location.href = contextPath;
					   				}
								});
					    	}
					    })
					
					
				}
			},
			'buttonPanel button[id=update_password]':{
				click:function()
				{
					Ext.create("LD.view.user.updatePassword").show();
				}
			}
		});
	},
	views:[
		'Viewport'
	]
});
