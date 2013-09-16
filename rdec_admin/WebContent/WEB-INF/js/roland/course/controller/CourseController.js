Ext.define("LD.controller.CourseController",{
	extend:'Ext.app.Controller',
	init:function(){
		var me = this;
		this.control({});
	},
	views:[
		'CourseView'
	],
	stores :[
		'CourseStore'
	]
})