Ext.define("AM.view.List",{
	extend:'Ext.grid.Panel',
	alias: 'widget.userlist',
	title:'用户列表',
	frame:true, //面板渲染
	forceFit:true, //自动填充panel的空白
	width:800,
	height:600,
/*	features:[
		Ext.create("Ext.grid.feature.Grouping",{
					groupByText : "分组",
					groupHeaderTpl : "{name}  一共{rows.length}人",
					showGroupsText : "展示分组",
					startCollapsed : true
				
		})
	],*/
	columns:[ //列
			Ext.create("Ext.grid.RowNumberer",{}),
			{text:"UserName",dataIndex:'username'},
			{text:"Sex",dataIndex:'sex',
				renderer:function(value)
				{
					if(value == "0"){
						return "<font color='green'>男</font>"
					}else if(value == "1"){
						return "<font color='red'>女</font>"
					}
				}
			},
			{text:"Email",dataIndex:'email',
				field:{
					xtype:'textfield',
					allowBlank:false
			}},{
				text:'说明',
				xtype:'templatecolumn',
				tpl:'姓名是{username},年龄是{sex}'
			},{
				text:'Action',
				width:50,
				xtype:'actioncolumn',
				items:[
					{
						tooltip: '修改',
						iconCls:'building_edit',
						id:'action_delete'
					},
					{
						tooltip: '删除',
						iconCls:'cancel',
						id:'action_update'
					}
				]
			}
		],
		tbar:[
			{xtype:'button',text:'添加',iconCls:'user_add'},
			{xtype:'button',text:'删除',iconCls:'user_delete',id:'delete'},
			{xtype:'button',text:'修改',iconCls:'user_edit'},
			{xtype:'button',text:'查看',iconCls:'user'},
			{xtype:'button',text:'保存',iconCls:'user_go',id:'update_email'}
		],
		//分页
		dockedItems :[{
			xtype:'pagingtoolbar',
			store : 'Users',
			dock:'bottom',
			displayInfo:true
		}],
		plugins:[
		/*	Ext.create("Ext.grid.plugin.CellEditing",{
				clicksToEdit : 2
			})*/
		
		Ext.create('Ext.grid.plugin.RowEditing', {
           		 clicksToEdit: 2
        	})
		 ],
		selType:'checkboxmodel',//设定选择模式
		multiSelect:true,//运行多选
		store : 'Users',
		initComponent:function(){
			this.callParent(arguments);
		}
});