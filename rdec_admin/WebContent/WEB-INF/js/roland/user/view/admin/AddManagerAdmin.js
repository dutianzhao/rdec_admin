Ext.define("LD.view.admin.AddManagerAdmin",{
	extend:'Ext.window.Window',
	alias:"widget.addManagerAdmin",
	UtilShowResults:Ext.create("Ext.ux.UtilShowResult"),
	initComponent: function () {
		    var me = this;
		    Ext.apply(this, {
		    title : '创建管理员',
			layout : 'fit',
			height : 415,
			width : 610,
			autoScroll:true,
			resizable:true,	//可拖动大小
			maximizable:true, //最大化
			modal : true,
			border:false,
			iconCls:'school_add',
			config:{
				bodyStyle :'overflow-x:visible;overflow-y:scroll' 
			},
			items : [{
				xtype:'form',
				method:'POST',
				plain:true,   //是否透明
				buttonAlign:'center',
				items : [{
							 xtype: 'container',
							 layout: 'hbox',
							 margin : '10',
							 items:[
							 	{
							 		xtype : 'fieldset',
									flex : 1,
									title : '基本信息',
									defaultType : 'textfield', // each item will be a
									layout : 'anchor',
									defaults : {
										hideEmptyLabel : false,
										labelWidth : 60,
										allowBlank : false,
										anchor:"100%"
									},
									collapsible: true,
									columnWidth:.5,
									items:[
										  {
												name : 'username',
												fieldLabel : '用户名',
												blankText : '用户名不能为空'
										  },Ext.create("Ext.ux.SelectUtil").userGroup("userGroupId","权限"),  Ext.create("Ext.ux.RolandStatus").rolandStatus(6,'status','用户状态'), 
										{
											name : 'sex',
											fieldLabel : '性别',
											xtype : 'radiogroup',
											items : [{
											boxLabel : '男',
											name : 'sex',
											inputValue : 0,
											checked : true
										}, {
											boxLabel : '女',
											name : 'sex',
											inputValue : 1
										}]
									}]
							 	},{
									xtype : 'component',
									width : 10
								},Ext.create("Ext.ux.CityUtils").showCity()
							 ]
					
						}, 
						{
                            xtype: 'fieldset',
                            title: '其他信息',
                            collapsible: true,
                            defaults: {
                              allowBlank: false
                            },
                             margin : '10',
                            items: [
                              	{
                                 	layout:'column',
                                    border:false,
                                    
                                    items:[{		columnWidth:.5,
                                              		defaultType: 'textfield',
                                               		defaults: {
                                                   		allowBlank: false,
														autoFitErrors: false,
														msgTarget : 'side',
														labelAlign:'left',
                                                   		anchor:"90%",
                                                   		labelWidth : 60,
                                                   		width:264
                                               		},
                                               		 border:false,
                                                     items: [ {
																name : 'nickname',
																fieldLabel : '姓名',
																blankText : '姓名不能为空'
															},{
																fieldLabel: '出身日期',
													            name: 'birthday',
													            xtype: 'datefield'
															}, {
															name : 'userMobile',
																fieldLabel : '电话',
																blankText : '电话为空'
															},{
															name : 'email',
																fieldLabel : '邮箱',
																blankText : '邮箱不能为空'
															}]
                                                },{
                                                   columnWidth:.5,
                                                    defaultType: 'textfield',
                                                    defaults: {
                                                        allowBlank: false,
														autoFitErrors: false,
														msgTarget : 'side',
														labelAlign:'left',
                                                   		anchor:"90%",
                                                   		labelWidth : 60,
                                                   		width:264
                                                    },
                                                    border:false,
                                                    items: [{
																name : 'statePermit',
																fieldLabel : '身份证',
																blankText : '身份证不能为空'
															},Ext.create("Ext.ux.RolandStatus").rolandStatus(3,'statusDegrId','学历'),
															Ext.create("Ext.ux.RolandStatus").rolandStatus(4,'statusLevelId','职称等级'),
															{
																name : 'specialty',
																fieldLabel : '专业',
																blankText : '专业不能为空'
															}
															]
                                                        }
                                                        ]
                                },
                                {
                                	labelWidth : 60,
                                 	xtype: 'textfield',
                                    allowBlank: true,
                                    name: 'synopsis',
                                    fieldLabel: '简介',
                                    anchor:"95%"
                                }
                                ]


					}
					],
						
						
					buttons:[
					{
						text:'创建人员',
						iconCls:'accept',
						handler:function(b)
						{
							var thisForm = this.up('form').getForm();
				            if(thisForm.isValid())
				            {
				            	this.up('form').getForm().submit({
				                    method : 'POST',
				                    url: contextPath + '/user/add_user_internal',
				                    waitMsg : '正在创建请稍后...',  
				                    timeout:3000,//等待时间
				                    success:function(form,action)
				                    {
					   					me.UtilShowResults.showResultMsg("用户建成功！");
					   					me.close();
					   					Ext.widget("manageAdmin").store.reload();
					   				},
					   				failure: function(form, action) 
					   				{
					   					me.UtilShowResults.showResultError(action.result.failMsg);
				                    }
				                  });
				            }
						}
					},
					{
						text:'重置',
						iconCls:'arrow_refresh',
						 handler: function() {
				                this.up('form').getForm().reset();
				          }
					},
					{
						text:'取消',iconCls:'cross',handler:function(b){
							me.close();
						}
					}]
						
				}
				
				
				]
		    
		    });
   
         me.callParent(arguments);
	}
});