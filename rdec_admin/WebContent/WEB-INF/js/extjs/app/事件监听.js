    //事件监听机制
  /**  
    Ext.get("ID名字").on("click",function(){
    	//操作
    });
   **/
    
    Ext.create("Ext.toolbar.Toolbar",{
		renderTo:Ext.getBody(),	//渲染的组件
		width:500,
		items:[
			{xtype:'button',id:'create',text:'创建'},
			{xtype:'button',id:'delete',text:'删除'},
			{xtype:'button',text:'删除按钮',handler:function(){
				var c = Ext.getCmp("delete")
				if(c)
				{
					c.destroy();
				}
			}}
		]
    });
    var createB = Ext.getCmp("delete")
    createB.addManagedListener(Ext.getCmp("create"),'click',function(){
    	alert("销毁");
    });
    
    Ext.EventManager.addListener("ID",'click',function(){});