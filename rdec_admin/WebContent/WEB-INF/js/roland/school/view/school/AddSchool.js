Ext.define("LD.view.school.AddSchool",{
	extend:'Ext.window.Window',
	alias:"widget.addSchool",
	UtilShowResults:Ext.create("Ext.ux.UtilShowResult"),
	initComponent: function () {
		    var me = this;
		    Ext.apply(this, {
		    title : '添加学校',
			layout : 'fit',
			height : 410,
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
									 columnWidth:.5,
									items:[
										{
										name : 'name',
										fieldLabel : '学校名称',
										blankText : '学校名称不能为空'
									}, {
										name : 'worktime',
										fieldLabel : '工作时间',
										blankText : '工作时间不能为空'
									},  Ext.create("Ext.ux.RolandStatus").rolandStatus(5,'statusId','学校状态'),{
										name : 'typeId',
										fieldLabel : '学校类型',
										xtype : 'radiogroup',
										items : [{
													boxLabel : '直营',
													name : 'typeId',
													inputValue : 0
												}, {
													boxLabel : '加盟',
													name : 'typeId',
													inputValue : 1,
													checked : true
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
                            title: '联系方式',
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
                                                     items: [{
                                                                name: 'userMobile',
                                                                fieldLabel: '联系方式',
                                                                blankText : '联系不能为空'
                                                            },
                                                            {
                                                                name: 'email',
                                                                fieldLabel: '学校邮箱',
                                                                blankText : '邮箱不能为空'
                                                            },
                                                            {
													            fieldLabel: '开始日期',
													            name: 'startTime',
													            xtype: 'datefield'
													        },
                                                            {
													            fieldLabel: '结束日期',
													            name: 'endTime',
													            xtype: 'datefield'
													        }
													        ]
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
                                                                name: 'qq',
                                                                fieldLabel: 'QQ',
                                                                blankText : 'QQ不能为空'
                                                            },
                                                            {
                                                                name: 'weibo',
                                                                fieldLabel: '微博地址',
                                                                blankText : '微博不能为空'
                                                            },
                                                            {
                                                                name: 'qqzone',
                                                                fieldLabel: 'QQ空间',
                                                                blankText : 'QQ空间不能为空'
                                                            },
                                                            {
                                                                name: 'blog',
                                                                fieldLabel: '博客地址',
                                                                blankText : '博客不能为空'
                                                            }
                                                            ]
                                                        }]
                                },
                                {
                                	labelWidth : 60,
                                 	xtype:'textfield',
                                    allowBlank: true,
                                    name: 'description',
                                    fieldLabel: '备注',
                                    anchor:"94%"
                                }
                                ]


					}
					],
						
						
					buttons:[
					{
						text:'创建学校',
						iconCls:'accept',
						handler:function(b)
						{
							var thisForm = this.up('form').getForm();
				            if(thisForm.isValid())
				            {
				            	this.up('form').getForm().submit({
				                    method : 'POST',
				                    url: contextPath + '/school/addSchool',
				                    waitMsg : '正在创建请稍后...',  
				                    timeout:3000,//等待时间
				                    success:function(form,action)
				                    {
					   					me.UtilShowResults.showResultMsg("学校创建成功！");
					   					me.close();
					   					Ext.widget("schoolList").store.reload();
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