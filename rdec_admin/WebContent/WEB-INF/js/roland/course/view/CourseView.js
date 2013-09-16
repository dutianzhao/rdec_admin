Ext.define("LD.view.CourseView",{
	extend:'Ext.grid.Panel',
	alias: 'widget.courseList',
	initComponent: function () {
        var me = this;
         Ext.apply(this, {
			forceFit:true, 
			loadMask: true,
			columnLines: true,
			columns:
			[ 
				Ext.create("Ext.grid.RowNumberer",{}),
			 	{text:"编号",dataIndex:'id',hidden: true},
			 	{text:"主课程",dataIndex:'typeName'},
			 	{text:"级别课程",dataIndex:'name'},
			 	{text:"课程时常",dataIndex:'classLongTime'},
			 	{text:"课程周期",dataIndex:'classStandard'},
			 	{text:"课程费用",dataIndex:'tuition'},
			 	{text:"招生对象",dataIndex:'recruitObject'},
			 	{text:"对应教材",dataIndex:'name'}
				
			],
			store : 'CourseStore',
			tbar:Ext.create("Ext.ux.Competence").competence(),
			
			//分页
			dockedItems :[
			{
				xtype:'pagingtoolbar',
				store :'CourseStore',
				dock:'bottom',
				displayInfo:true
			}],
			selType:'checkboxmodel',//设定选择模式
			multiSelect:true//运行多选
				
	        });
        me.callParent(arguments);
	}
})