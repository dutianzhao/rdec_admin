Ext.onReady(function(){
	Ext.QuickTips.init();
	Ext.Loader.setConfig({
		enable:true
	});
	
	Ext.application({
		name:'AM',	//应用的名字
		appFolder:contextPath + '/js/extjs/app',//应用的目录
		launch:function(){//页面加载完成执行函数
			Ext.create("Ext.container.Viewport",{
				layout:'auto',	
				items:{
					xtype:'userlist',
					title:'用户列表'
				}
			});
		},
		controllers:[
			'Users'
		]
	});
});