	//保存到cookie / 一次性
    Ext.regModel("user",{
    	fields:[
    		{name:'name',type:'string'}
    	],
    	proxy:{	    //localstorage 
    		 type: 'sessionstorage',
        	 id  : 'twitter-Searches'
    	}
    });
    //store初始化
    var myStore = Ext.create("Ext.data.Store",{
    	model:'user'
    });
    myStore.add({name:'张三'});
    myStore.sync();
    myStore.load();
    myStore.each(function(red){
    	alert(red.get('name'));
    });
    
    
    
    
    
    
    Ext.regModel("user",{
    	fields:[
    		{name:'username',type:'string'},
    		{name:'password',type:'string'}
    	]
    });
    
    var ajaxProxy = Ext.create("Ext.data.proxy.Ajax",{
    	url : 'user/logoin',
    	model:'user',
    	reader :'json'
    })
    ajaxProxy.doRequest(Ext.create("Ext.data.Operation",{
		    	action:'reader',
		    	limit:10,		//分页
		    	start:1,
		    	sorters:[		//排序
		    		Ext.create("Ext.util.Sorter",{
		    			property:'name',
		    			direction:'DESC'
		    		})
		    	]
	    	}
    	),function(o){
    	var text = o.response.responseText;
    	alert(Ext.JSON.decode(text)['username']);
    })