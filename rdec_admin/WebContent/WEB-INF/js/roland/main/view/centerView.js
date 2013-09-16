Ext.define("LD.view.centerView",{
	extend:'Ext.tab.Panel',
	alias:"widget.centerPanel",
	initComponent: function () {
		
        var me = this;
        Ext.apply(this, {
            activeTab : 0,
			enableTabScroll : true,  //是否允许Tab溢出时可以滚动
			animScroll : true,
			autoScroll : true,
			region : 'center',
			id:'tabpanel',
			split : true,
			frame:true,
			scripts : true,
			layoutConfig : {
				animate : true
			},
			items: 
			[
				{
        			title: '我的桌面'
		    	}
		    ],
		   plugins: Ext.create('Ext.ux.TabCloseMenu', {})
				
        });
        
   
        me.callParent(arguments);
    }
});