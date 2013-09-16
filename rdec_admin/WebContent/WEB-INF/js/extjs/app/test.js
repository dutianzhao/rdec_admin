Ext.require([
    'Ext.form.*',
    'Ext.window.Window'
]);

Ext.onReady(function() {
    Ext.create("Ext.window.Window",{
    	title:'登陆',
    	width: 400,
        height:200,
        closable:false
    }).show();
    
     /**
     * 扩展自定义验证方法
     */
    Ext.apply(Ext.data.validations,{
    	age:function(config,value)
    	{
    		var min = config.min;
    		var max = config.max;
    		if(min <= value && value <= max)
    		{
    			return true;
    		}else
    		{
    			this.ageMessage = this.ageMessage + "范围应该在：[" +min+ "]到[" +max+"]之间" 
    			return false;
    		}
    	},
    	ageMessage: 'age不符合'
    });
    
    
    /**
     * 实列化一个类
     * 然后调用
     */
    Ext.regModel("user",{
		fields:[
			{name:'name',type:'auto'},
			{name:'age',type:'int'},
			{name:'email',type:'int'}
		],
		validations:[
			{type:'length',filed:'name',min:2,max:6},
			{type:'age',filed:'age',min:0,max:100}
			]
    });
    //赋值
    var user = Ext.create("user",{
    	name:'张三',
    	age:-26,
    	email:'333@qq.com'
    });
    var errors = user.validate();
//    alert(user.get('name'));
    errors.each(function(v){
    	console.log(v)
    	Ext.Msg.show({
    		title:'错误',
    		msg:v.message
    	});
    });
    
   
    
});