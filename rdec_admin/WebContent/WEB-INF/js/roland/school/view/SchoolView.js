Ext.define("LD.view.SchoolView",{
	extend:'Ext.grid.Panel',
	alias: 'widget.schoolList',
	comboByGridJs:Ext.create("Ext.ux.RolandStatus"),
	initComponent: function () {
        var me = this;
        var comboByGrid = me.comboByGridJs.rolandStatusGrid(5)
        var comboStore = comboByGrid.getStore().reload();
        Ext.apply(this, {
			forceFit:true, //自动填充panel的空白
			columns:
			[ 
				Ext.create("Ext.grid.RowNumberer"),
			 	{text:"编号",dataIndex:'id',hidden: true},
				{text:"名称",dataIndex:'name'},
				{text:'校长',dataIndex:'schoolMasterName'},
			 	{text:'地址',xtype:'templatecolumn',tpl:'{address}'},
			 	{text:"联系电话",dataIndex:'userMobile'},
			 	{text:"有效期至",dataIndex:'endTime'},
				{text:"状态",dataIndex:'statusId',
					renderer:function(value){
						return me.comboByGridJs.rolandEditStatus(value,comboStore);
					},
					field:comboByGrid
				},
				{text:"类型",dataIndex:'typeId',
					renderer:function(value)
					{
						if(value == "0")
						{
							return "<font color='green'>直营</font>"
						}else if(value == "1")
						{
							return "<font color='red'>加盟</font>"
						}
					}
				},
				{text:"描述",dataIndex:'description'}
			],
			store : 'SchoolStore',
			tbar:Ext.create("Ext.ux.Competence").competence(),
			
			plugins:[
				Ext.create("Ext.grid.plugin.CellEditing",{
					clicksToEdit : 2
				})
			],
			selType:'checkboxmodel',//设定选择模式
			multiSelect:true//运行多选
				
	        });
        
        me.callParent(arguments);
    }
});