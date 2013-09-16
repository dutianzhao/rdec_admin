//user类
Ext.define('AM.model.User', {
    extend: 'Ext.data.Model',
	fields:[
		{name:'username',type:'string',sortable:true},
		{name:'sex',type:'int',sortable:true},
		{name:'email',type:'string',sortable:true}
	]
});