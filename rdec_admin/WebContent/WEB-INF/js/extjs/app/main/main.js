Ext.require(['*']);

    Ext.onReady(function() {

        Ext.QuickTips.init();
        
        var viewport = Ext.create('Ext.container.Viewport', {
            id: 'border-example',
            layout: 'border',
            items: [
            Ext.create('Ext.Component', {
                region: 'north',
                height: 32, 
                autoEl: {
                    tag: 'div',
                    html:'<img src="img/logo.png" />'
                }
            }),{
                region: 'west',
                stateId: 'navigation-panel',
                id: 'west-panel', // see Ext.getCmp() below
                title: '功能菜单',
                split: true,
                width: 200,
                minWidth: 175,
                maxWidth: 400,
                collapsible: true,
                animCollapse: true,
                margins: '0 0 0 5',
                layout: 'accordion',
                items: []
            },
            Ext.create('Ext.tab.Panel', {
                region: 'center', // a center region is ALWAYS required for border layout
                deferredRender: false,
                activeTab: 0,     // first tab initially active
                items: [{
                    html: 'ddd',
                    title: 'Close Me',
                    closable: true,
                    autoScroll: true
                }, {
                    html: 'aaaaaa',
                    title: 'Center Panel',
                    autoScroll: true
                }]
            })]
        });
        try{
   
        	
       var bb =  
       	{
           title:'11',
           items:Ext.create('Ext.tree.Panel', {
			  rootVisible:false,
			  autoScroll : true,
              border : false,
			  root:{
				text:'root',
				id:0,
				leaf:false,
				children:[
				 {
					text:'root1',
					id:01,
					leaf:true
				 },
				 {
					text:'root2',
					id:02,
					leaf:true
				}]
			}     
			})
           }
           Ext.getCmp("user_tree_competence").add(bb)
     }catch(e)
     {
     //	Ext.example.msg("友情提示","服务器异常请联系管理员!");
     	console.log(e);
     }
     
    function showResult(status)
    {
    	if(status == 404)
    	{
    		 Ext.example.msg('友情提示', '你所访问的链接不存在请联系管理员!');
    	}
        else{
        	Ext.example.msg('友情提示', '服务器异常请联系管理员!');
        }
    }
    });