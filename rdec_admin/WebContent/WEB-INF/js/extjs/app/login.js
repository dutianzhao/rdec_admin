Ext.onReady(function() {
	
	Ext.QuickTips.init();
	
    Ext.create("Ext.window.Window",{
    	title:'登陆',
    	width: 400,
        height:200,
        closable:false
    }).show();
    
	Ext.create("Ext.grid.Panel",{
		title:'用户列表',
		frame:true, //面板渲染
		forceFit:true, //自动填充panel的空白
		width:600,
		height:280,
		columns:[ //列
			{text:"UserName",dataIndex:'username'},
			{text:"Sex",dataIndex:'sex'},
			{text:"email",dataIndex:'email'}
		],
		tbar:[
			{xtype:'button',text:'添加',iconCls:'user_add'},
			{xtype:'button',text:'删除',iconCls:'user_delete',
				handle:function(){
					alert();
				}
			},
			{xtype:'button',text:'修改',iconCls:'user_edit'},
			{xtype:'button',text:'查看',iconCls:'user'}
		],
		dockedItems :[{
				xtype:'pagingtoolbar',
				store:Ext.data.StoreManager.lookup('s_user'),
				dock:'bottom',
				displayInfo:true
			}],
		selType:'checkboxmodel',//设定选择模式
		multiSelect:true,//运行多选
		
		renderTo:'div1',
		store : Ext.data.StoreManager.lookup('s_user')
	});
	
});