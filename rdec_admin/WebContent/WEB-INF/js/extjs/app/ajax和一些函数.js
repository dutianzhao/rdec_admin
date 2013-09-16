Ext.Ajax.request({
		url:'user/logoin',
		params:{username:'liuyd',password:'123456'},
		method:'post',
		success:function(response,options){
			console.log(response.responseText);
		}
	});
	
	//点击按钮赋值
	Ext.get("b1").on("click",function(){
		var time = Ext.get("time").getLoader();
		//startAutoRefresh(1,{}) 定时器  load
		time.startAutoRefresh(1000,{
			url:'user/logoin',
			renderer:function(loader,response,request)
			{
				var time = response.responseText;
				Ext.getDom("time").value = time;
			}
		});
	});
	
//	Ext.core.Element.fly("div1")
    //查询  用类似 XML查找的语法
	var arrDiv = Ext.query("div");
	
	Ext.create("Ext.panel.Panel",{
		width:400,
		height:200,
		id:'myp01',
		title:'This is My panel',
		html:'哈哈',
		renderTo:'div1'
	});
	var myPanel = Ext.getCmp("myp01");
	myPanel.setTitle("新Title");
	
	//isEmpty 判断是否为空
	/*alert(Ext.isEmpty({}));
	alert(Ext.isEmpty({},true));
	alert(Ext.isEmpty({},false));*/
	
	Ext.namespace("COM.LD.CORE"); //命名空间
	
	Ext.Msg.alert("Hello",Ext.htmlDecode("<h1>你好啊>张三</h1>"));
	
	//查询class的
	//Ext.select("");