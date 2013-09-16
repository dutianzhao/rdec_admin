Ext.define("LD.controller.admin.ManagerAdmin",{
	extend:'Ext.app.Controller',
	init:function(){
		var me = this;
		this.control({
			"manageAdmin button[id=school_add]":{
				click:function(grid, record){
					Ext.widget('addManagerAdmin').show();
				}
			}
		});
	},
	views:[
		'admin.ManageAdmin',
		'admin.AddManagerAdmin'
	],
	stores :[
		'admin.ManagerAdminStore'
	]
});