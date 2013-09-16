Ext.define("LD.view.AddActivityView",{
	extend:'Ext.window.Window',
	alias:"widget.addActivity",
	UtilShowResults:Ext.create("Ext.ux.UtilShowResult"),
	initComponent: function () {
		    var me = this;
		    Ext.apply(this, {
		    title : '添加活动',
			layout : 'fit',
			height : 410,
			width : 610,
			autoScroll:true,
			resizable:true,	//可拖动大小
			maximizable:true, //最大化
			modal : true,
			border:false,
			iconCls:'school_add',
			items : [{
				xtype:'form',
				method:'POST',
				plain:true,   //是否透明
				id:'activity_form',
				buttonAlign:'center',
				items : [
						{
                            xtype: 'fieldset',
                            defaults: {
                              allowBlank: false
                            },
                            padding:10,
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
                                                                name: 'name',
                                                                fieldLabel: '活动名称',
                                                                blankText : '名称不能为空'
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
                                                    items: [
                                                            Ext.create("Ext.ux.RolandStatus").rolandStatus(7 ,'statusId','活动状态'),
                                                            Ext.create("Ext.ux.ChannelType").channelTypeByParent(2,'channelTypeId','渠道来源'),
                                                            {
                                                                name: 'address',
                                                                fieldLabel: '活动地址',
                                                                blankText : '地址不能为空'
                                                            }
                                                           ]
                                                        }]
                                },
                                {
                                	labelWidth : 60,
                                 	xtype:'textfield',
                                    allowBlank: true,
                                    name: 'remarker',
                                    fieldLabel: '备注',
                                    anchor:"94%"
                                },
                                {
							        labelAlign: 'top',
						            xtype: 'htmleditor',
						            name: 'introduce',
						            fieldLabel: '活动介绍',
						            height: 150,
						            anchor: '100%'
						        }
                                ]


					}
					],
						
						
					buttons:[
					{
						text:'创建活动',
						iconCls:'accept',
						handler:function(b)
						{
							var thisForm = this.up('form').getForm();
				            if(thisForm.isValid())
				            {
				            	this.up('form').getForm().submit({
				                    method : 'POST',
				                    url: Ext.getStore('ActivityStore').getProxy().api['update_or_add_avtivity'], 
				                    waitMsg : '正在创建请稍后...',  
				                    timeout:3000,//等待时间
				                    success:function(form,action)
				                    {
					   					me.UtilShowResults.showResultMsg("活动创建成功！");
					   					me.close();
					   					Ext.getStore('ActivityStore').reload();
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

})