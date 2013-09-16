//自动加载
Ext.Loader.setConfig({
    enabled: true
});

Ext.onReady(function() {
    Ext.QuickTips.init();
    
     var loginForm = Ext.create("Ext.form.Panel",{
		bodyPadding:30,
		widht:400,
		height:200,
		layout: 'anchor',//字段将被垂直排列，延伸到全宽
		border: false,
		method:'POST',
		defaults: {
	        anchor: '100%',
	        labelWidth: 60,
	        allowBlank: false, //验证不能为空
	        msgTarget : 'side', //验证错误信息出现在左边
			labelAlign:'left',
            autoFitErrors: false
	    },
	    defaultType: 'textfield',
	    items:[
	    	{
	    		fieldLabel: '用户名',
        		name: 'username',
        		blankText:'用户名不能为空',
        		value:'admin'
	    	},
	    	{
	    		fieldLabel: '密  码',
        		name: 'password',
        		inputType:'password',
				blankText:'密码不能为空',
				value:'admin'
	    	}/*,
	    	{
	    		fieldLabel: '验证码',
        		name: 'codenum',
        		id:'randCode',
        		maxWidth:200,
        		maxLength: 4,
              	maxLengthText: '验证码不能超过4个字符!'
	    	}*/
	    ],
	    buttons: [{
            text: '登陆',
            iconCls:'accept',
            handler: function() {
                if(this.up('form').getForm().isValid())
                {
                        loginForm.getForm().submit({
                        	method : 'POST',
                            url: contextPath + '/user/logoin',
                            timeout:3000,//等待时间
                            waitMsg : '正在登录请稍后...',
                            success:function(form,action)
                            {
                            	 Ext.Msg.wait('登陆成功...');
	   					//		 window.location.href = "desktop";
	   							 window.location.href = "extmain";
	   							 
	   						},
                            failure: function(form, action) {
                            	Ext.example.msg("友情提示",action.result.failMsg);
		                    }
                        });
                }
            }
        },{
            text: '重置',
            iconCls:'arrow_refresh',
            handler: function() {
                this.up('form').getForm().reset();
            }
        }]
		
    });
    
    Ext.create("Ext.window.Window",{
    	autoShow: true,
    	title: '登陆',
    	iconCls :"manager_admin",
    	height: 200,
    	width: 400,
    	collapsible:true,
    	closable:false,
    	plain: true,
    	items:loginForm,
    	layout: 'fit'
    });
    
    /*Ext.core.DomHelper.insertAfter( Ext.get('randCode'),   {
       tag: 'img',
       id:'checkimg',
       src: 'Kaptcha.mpg',  
       align: 'absbottom',
       style: 'padding-left:50px;cursor:pointer'
   } );*/
});