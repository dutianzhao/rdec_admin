Ext.define("LD.view.user.updatePassword",{
	extend:'parent.Ext.window.Window',
	alias:"widget.updatePassword",
	UtilShowResults:Ext.create("Ext.ux.UtilShowResult"),
	initComponent: function () {
		    var me = this;
		    Ext.apply(this, {
			title:'修改密码',
			height: 200,
		    width: 400,
		    layout:'fit',
		    modal:true,
			items:[
				{
					xtype:'form',
					bodyPadding:20,
					layout: 'anchor',//字段将被垂直排列，延伸到全宽
					border: false,
					method:'POST',
					defaultType:'textfield',
					defaults:{
						 anchor: '100%',
						labelWidth : 70,
						allowBlank: false,
						autoFitErrors: false,
						msgTarget : 'side',
						labelAlign:'left'
					},
					items:[{
						fieldLabel : "旧密码",
						name:'oldPassword',
						selectOnFocus : true,
						grow:false,//是否在这个表单字段规定长度内自动根据文字的内容进行伸缩
						blankText:'旧密码不能为空',
						inputType:'password'
					},{
						fieldLabel : "新密码",
						name:'passwordone',
						inputType:'password',
						blankText:'新密码不能为空',
						grow:false,
						id:'passwordone'
					},{
						fieldLabel : "确认密码",
						name:'passwordtwo',
						inputType:'password',
						grow:false,
						id:'passwordtwo'
					}
					],
					buttons:
					[
						{text:'确定修改',
							handler: function() {
								var thisForm = this.up('form').getForm();
				                if(thisForm.isValid())
				                {
				                	var password=parent.Ext.getCmp('passwordone').getValue();
                   				    var confirmPassword=parent.Ext.getCmp('passwordtwo').getValue();
                   				    if(password !=confirmPassword)
                   				    {
                   				    	me.UtilShowResults.showResultError("两次密码不一致");	  
                   				    	return false;
								    };
				                    thisForm.submit({
				                    method : 'POST',
				                    url: contextPath + '/user/updatePassword',
				                    waitMsg : '正在修改请稍后...',  
				                    timeout:3000,//等待时间
				                    success:function(form,action)
				                    {
					   					me.UtilShowResults.showResultMsg("密码修改成功！");
					   					me.close();
					   				},
					   				failure: function(form, action) 
					   				{
					   					me.UtilShowResults.showResultError(action.result.failMsg);
				                    }
				                  });
				                }
				            }
						
						},
						{text:'取消',handler:function(b){
							me.close();
						}}
					]
				
				}
			]
				
        });
   
         me.callParent(arguments);
	}
});