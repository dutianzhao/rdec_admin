
    
    Ext.regModel("user",{
    	fields:[
    		{name:'name',type:'auto'},
    		{name:'age',type:'int'}
    	]
    });
    var userDate = [
    	{name:'张三',age:10},
    	{name:'李四',age:23}
    ];
    //创建model代理类
    var memoryProxy = Ext.create("Ext.data.proxy.Memory",{
    	data:userDate,
    	model:'user'
    });
   
     userDate.push({name:'王麻子',age:35})
    
  /*  //修改
    memoryProxy.update(new Ext.data.Operation({
    	action:'update',
    	data:userDate
    }),function(result){},this);
    */
    
    
    //读取数据
    memoryProxy.read(new Ext.data.Operation(),function(result){
    	var datas = result.resultSet.records;
    	Ext.Array.each(datas,function(model){
    		alert(model.get('name'));
    	});
    });