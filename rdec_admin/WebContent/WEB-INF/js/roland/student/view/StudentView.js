Ext.define("LD.view.StudentView",{
	extend:'Ext.grid.Panel',
	alias: 'widget.studentView',
	initComponent: function () {
        var me = this;
         Ext.apply(this, {
			forceFit:true, 
			loadMask: true,
			columnLines: true,
			features:[
			Ext.create("Ext.grid.feature.Grouping",{
						groupByText : "分组",
						groupHeaderTpl : "{name}  一共{rows.length}项活动",
						showGroupsText : "展示分组",
						startCollapsed : true
				})
			],
			columns:
			[	Ext.create("Ext.grid.RowNumberer",{width: 40}),
				{text:"编号",dataIndex:'id',hidden: true,locked:true},
				{text:'学校',dataIndex:'schoolName',width: 200,locked:true},
				{text:'姓名',dataIndex:'nickName',locked:true,width: 120},
				{text:'家长',dataIndex:'family',width: 120},
				{text:'电话',dataIndex:'mobile',width: 220},
				{text:'邮箱',dataIndex:'email',width: 220},
				{text:'性别',dataIndex:'sex',width: 60},
				{text:'年龄',dataIndex:'age',width: 60},
				{text:'地址',dataIndex:'address',width: 300},
				{text:'意向课程',dataIndex:'intertionCurriculum',width: 208},
				{text:'关注级别',dataIndex:'attentionLevel',width: 80},
				{text:'创建时间',dataIndex:'createDate',width: 150},
				{text:'进度',dataIndex:'advisoryStatus',width: 100}
			 ],
			store : 'StudentStore',
			tbar:Ext.create("Ext.ux.Competence").competence(),
			//分页
			dockedItems :[
			{
				xtype:'pagingtoolbar',
				store :'StudentStore',
				dock:'bottom',
				displayInfo:true
			}],
			selType:'checkboxmodel',//设定选择模式
			multiSelect:true//运行多选
				
	        });
        me.callParent(arguments);
	}
})