Ext.define("LD.view.admin.ManageAdmin",{
	extend:'Ext.grid.Panel',
	alias: 'widget.manageAdmin',
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
			 	{text:"用户名",dataIndex:'nickname'},
			 	{text:"职位",dataIndex:'groupName'},
			 	{text:"地区",dataIndex:'cityName'},
			 	{text:"学校",dataIndex:'schoolName'},
			 	{text:"联系电话",dataIndex:'userMobile'}
				
			],
			store : 'admin.ManagerAdminStore',
			tbar:Ext.create("Ext.ux.Competence").competence(),
			
			//分页
			dockedItems :[
			{
				xtype:'pagingtoolbar',
				store :'admin.ManagerAdminStore',
				dock:'bottom',
				displayInfo:true
			}],
			selType:'checkboxmodel',//设定选择模式
			multiSelect:true//运行多选
				
	        });
        me.callParent(arguments);
	}
});