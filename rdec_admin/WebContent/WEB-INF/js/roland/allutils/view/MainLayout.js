Ext.define("LD.view.MainLayout",{
	extend:'Ext.panel.Panel',
	alias:'widget.mainLayout',
	defaults:{
		split:true
	},
	border:false,
	id:'main_layout_panel',
	layout:'border',
	items:[{
		title:'渠道类型',
		region:'west',
		iconCls:'bricks',
		xtype:'panel',
		width: 200,
		collapsible:true,//可以被折叠
		id:'west-tree',
		layout:'fit',
		items:Ext.create("Ext.ux.TreeUtil",{
			id:'channel_tree',
			listeners:{
				cellClick:function(item, index, e,node){
					e.stopEvent;	
					var grid = this.ownerCt.ownerCt.child("#center-grid")
					grid.setTitle("已选中["+node.data.text+"]");

					var gridCompList = grid.items.get(0);
					
					gridCompList.getStore().load({
						params : 
						{
							channelId : node.data.id
						}
					});
				}
			}
		})
	},{
		title:'添加权限功能',
		iconCls:'drive_add',
		region:'center',
		xtype:'panel',
		id:'center-grid',
		layout:'fit',
		items:[{
			id:'dept-grid',
			xtype:'channelList'
		}]
	}]
});