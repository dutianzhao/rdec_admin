Ext.define("LD.view.topView",{
	extend:'Ext.Component',
	alias:"widget.topPanel",
     initComponent: function () {
        var me = this;
        Ext.apply(this, {
            region: 'north',
		 //   height: 32,
		    plain:false,
		    split: true,
		    frame:true,
		    scripts : true,
			layoutConfig : {
				animate : true
			},
		    /*autoEl: {
		      tag: 'div',
		      html:'<img src="img/logo.png">'
		    }*/
		    loader: {
		        url: contextPath + '/top',
		        autoLoad: true
		    }
        });
        me.callParent(arguments);
    }
});

/*new Ext.Viewport({
        id:'viewport',
        layout: 'border',
        renderTo:document.body,
        items:
            [
            {region:'north',height: 63,autoLoad :{ url: 'top.aspx',scripts:true}}
]})
*/