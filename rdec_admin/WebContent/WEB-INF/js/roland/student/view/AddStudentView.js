Ext.define("LD.view.AddStudentView",{
	extend:'Ext.window.Window',
	alias:"widget.addStudent",
	initComponent: function () {
		    var me = this;
		    Ext.apply(this, {
		    title : '添加用户',
			layout : 'fit',
			height : 410,
			width : 610,
			autoScroll:true,
			resizable:true,	//可拖动大小
			maximizable:true, //最大化
			modal : true,
			border:false,
			iconCls:'school_add',
			config:{
				bodyStyle :'overflow-x:visible;overflow-y:scroll' 
			},
			items : [{
				xtype:'form',
				method:'POST',
				plain:true,   //是否透明
				buttonAlign:'center',
				items : [ 
						{},
					],
					buttons:[
					{
						text:'创建学生',
						iconCls:'accept',
						handler:function(b)
						{}
					},
					{
						text:'重置',
						iconCls:'arrow_refresh',
						 handler: function() {
				                this.up('form').getForm().reset();
				          }
					},
					{
						text:'取消',iconCls:'cross',handler:function(b){
							me.close();
						}
					}]
						
				}
				
				
				]
		    
		    });
   
         me.callParent(arguments);
	}
})
