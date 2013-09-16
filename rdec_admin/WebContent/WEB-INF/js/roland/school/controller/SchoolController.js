Ext.define("LD.controller.SchoolController",{
	extend:'Ext.app.Controller',
	init:function(){
		var me = this;
		this.control({
			"schoolList button[id=add_school]":{
				click:function(grid, record){
					Ext.widget('addSchool').show();
				}
			},
			"schoolList button[id=save_school]":{
				click:function(grid, record){
					gird = grid.ownerCt.ownerCt;
					Ext.create('Ext.ux.UpdateGridStatus').updateGridComboBox(gird);
				}
			}
		});
	},
	views:[
		'SchoolView',
		'school.AddSchool'
	],
	stores :[
		'SchoolStore'
	]
});