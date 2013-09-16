Ext.define("LD.view.ActivityView",{
	extend:'Ext.grid.Panel',
	alias: 'widget.activityList',
	comboByGridJs:Ext.create("Ext.ux.RolandStatus"),
	initComponent: function () {
        var me = this;
        var comboByGrid = me.comboByGridJs.rolandStatusGrid(7)
        var comboStore = comboByGrid.getStore().reload();
         Ext.apply(this, {
			forceFit:true, 
			loadMask: true,
			columnLines: true,
			id:'activity_list_grid',
			features:[
			Ext.create("Ext.grid.feature.Grouping",{
						groupByText : "分组",
						groupHeaderTpl : "{name}  一共{rows.length}项活动",
						showGroupsText : "展示分组",
						startCollapsed : true
					
				})
			],
			columns:
			[	Ext.create("Ext.grid.RowNumberer"),
				{text:"编号",dataIndex:'id',hidden: true},
				{text:"学校",dataIndex:'schoolName'},
			 	{text:"活动名称",dataIndex:'name'},
			 	{text:"地点",dataIndex:'address'},
			 	{text:"创建人呢",dataIndex:'nickName'},
			 	{text:"介绍",dataIndex:'introduce'},
			 	{text:'状态',dataIndex:'statusId',
			 		renderer:function(value){
						return me.comboByGridJs.rolandEditStatus(value,comboStore);
					},
					field:comboByGrid
			 	},
			 	{text:"开始时间",dataIndex:'startTime'},
			 	{text:"结束时间",dataIndex:'endTime'}
			 ],
			store : 'ActivityStore',
			tbar:Ext.create("Ext.ux.Competence").competence(),
			plugins:[
				Ext.create("Ext.grid.plugin.CellEditing",
				{
					clicksToEdit : 2
				})
			 ],
			
			//分页
			dockedItems :[
			{
				xtype:'pagingtoolbar',
				store :'ActivityStore',
				dock:'bottom',
				displayInfo:true
			}],
			selType:'checkboxmodel',//设定选择模式
			multiSelect:true//运行多选
				
	        });
        me.callParent(arguments);
	}
})