Ext.define("AM.controller.Users",{
	extend:'Ext.app.Controller',
	init:function(){
		this.control({
			'userlist button[id=delete]':{
				click:function(o){
					var gird = o.ownerCt.ownerCt;
						var data = gird.getSelectionModel().getSelection();
						if(data.length == 0){
							Ext.Msg.alert("提示","您最少要选择一条数据");
						}else{
							//1.先得到ID的数据(name)
							var st = gird.getStore();
							var ids = [];
							Ext.Array.each(data,function(record){
								ids.push(record.get('username'));
							})
							//2.后台操作(delet)
							Ext.Ajax.request({
								url: REDC +'/user',
								params:{ids:ids.join(",")},
								method:'POST',
								timeout:2000,
								success:function(response,opts){
									Ext.Array.each(data,function(record){
										st.remove(record);
									})
								}
							})
							//3.前端操作DOM进行删除(ExtJs)
						}
				}
			},
			'userlist actioncolumn[id=action_delete]':{
				click : function(o,item,rowIndex,colIndex ,e){
					Ext.Msg.alert("提示",rowIndex + " " + colIndex);
				}
			},
			/*'userlist':({
				edit:function(editor,e,options)
				{
					console.log(e.date);
				}
			}),*/
			//直接修改了添加数据
			'userlist button[id=update_email]':{
				click:function(o){
					var gird = o.ownerCt.ownerCt;
					var st = gird.getStore();
					st.sync();//数据与后台同步
					var records = st.getUpdatedRecords();
					Ext.Array.each(records,function(model){
						model.commit();
					});	
				//	 Ext.example.msg("dd","dd");
				}
			}
		});
	},
	views:[
		'List'
	],
	stores :[
		"Users"
	],
	models :[
		"User"
	] 
});
