var contextPath = "/rdec_admin";
Ext.Loader.setPath('Ext.ux',contextPath + '/js/extjs/ux')
//var modelFactory = Ext.create('Ext.ux.modelFactory',{});
//var showResult = Ext.create('Ext.ux.UtilShowResult',{});
getQueryParam = function()
{
	var match = RegExp('theme' + '=([^&]*)').exec(location.search);
	return match && decodeURIComponent(match[1]);
}


closeLoadIng = function()
{
	Ext.Function.defer(function()
	{  
	    try
	    {
	    	parent.Ext.get('loading').remove();  
	    }catch(e)
	    {
	    	console.log("已经被删除了");
	    }
	}, 1000)
}

	Ext.Ajax.on('requestcomplete',checkUserSessionStatus, this);    
    function checkUserSessionStatus(conn,response,options){    
        var sessionStatus = response.getResponseHeader("sessionstatus");  
        if(typeof(sessionStatus) != "undefined")
        {
        	closeLoadIng();
        	parent.Ext.Msg.show({ 
				title : '系统提示', 
				msg : '会话超时，请重新登录!', 
				buttons: Ext.Msg.OK, 
				fn: function(btn, text)
				{
					if (btn == 'ok')
				    {  
				        window.location.href = contextPath; 
				    }
				}, 
				closable: false 
				}); 
     }    
   };   
   
 /*  Ext.Ajax.on('requestexception', function(conn, response, options) {
   			closeLoadIng();
			var msg = '访问系统资源时发生异常<br/>' + '异常状态:' + response.status + '('
					+ response.statusText + ')<br/>' + '异常信息:'
					+ response.responseText
			parent.Ext.Msg.show({
						title : '系统异常',
						msg : msg,
						width : 500,
						icon : Ext.MessageBox.ERROR,
						buttonText : {
							ok : '&nbsp;&nbsp;提交错误报告&nbsp;&nbsp;'
						},
						buttons : Ext.MessageBox.OKCANCEL
					});
		});*/