/**
     * 代理，ajax请求数据
     */
    
    Ext.regModel("user",{
    	fields:[
    		{name:'username',type:'auto'},
    		{name:'password',type:'auto'}
    	],
    	proxy:{
    		type:'ajax',
    		url:'user/logoin'    //获取数据
    	}
    });
    var p = Ext.ModelManager.getModel("user");
    
    p.load(1,{
    	scope: this,
    failure: function(record, operation) {
       
    },
    success: function(record, operation) {
        console.log(record.data.password);
    },
    callback: function(record, operation, success) {
        
    }
    });
    
    
    
    
    
    
    
    
    
    //写数据
    Ext.regModel("user",{
    	fields:[
    		{name:'username',type:'auto'},
    		{name:'password',type:'auto'}
    	],
    	proxy:{
    		type:'ajax',
    		url:'user/logoin',    //获取数据
    		writer:{
    			type:'json'
    		}
    	}
    });
    Ext.ModelMgr.create({
    	username:'liuyd',
    	password:'123456'
    },'user').save();