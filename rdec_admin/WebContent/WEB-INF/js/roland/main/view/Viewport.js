Ext.define("LD.view.Viewport",{
	extend:'Ext.panel.Panel',
	alias:"widget.viewport",
	layout:'border',
	initComponent:function(){
		var me = this;
        Ext.applyIf(me,
         {
           items: [
		        Ext.create('LD.view.topView'),
			 	Ext.create('LD.view.menuTreeView'),
				Ext.create('LD.view.centerView'),
				Ext.create('LD.view.buttonView')
			]  
         });
         me.callParent(arguments);
	}
});
