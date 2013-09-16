Ext.onReady(function(){
	Ext.QuickTips.init();
	Ext.Loader.setConfig({
		enable:true
	});
	
	Ext.application({
		name:'LD',	//应用的名字
		appFolder:contextPath + '/js/roland/activity',//应用的目录
		launch:function(){//页面加载完成执行函数
			Ext.create("Ext.container.Viewport",{
				layout:'fit',	
				items:{
					xtype:'activityList'
				}
			});
		},
		controllers:[
			'ActivityController'
		]
	});
	
});


