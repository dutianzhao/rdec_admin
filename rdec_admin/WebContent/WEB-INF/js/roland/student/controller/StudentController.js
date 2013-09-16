Ext.define("LD.controller.StudentController",{
	extend:'Ext.app.Controller',
	init:function(){
		var me = this;
		this.control({
			"studentView button[id=add_student]":{
				click:function(grid, record){
					Ext.widget("addStudent").show();
				}
			}
		});
	},
	views:[
		'StudentView','AddStudentView'
	],
	stores :[
		'StudentStore'
	]
})