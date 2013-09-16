Ext.define("LD.view.ChannelList",{
	extend:'Ext.grid.Panel',
	alias:'widget.channelList',
	store:'ChannelStore',
	border:false,
	forceFit:true, 
	loadMask: true,
	columnLines: true,
	selType:'checkboxmodel',//设定选择模式
	tbar:[
		{xtype:'button',text:'添加',id:'add_grid_row',iconCls:'drive_add'},
		{xtype:'button',text:'删除',id:'delete_compet',iconCls:'drive_delete'},
		{xtype:'button',text:'保存',id:'save_compet',iconCls:'drive_disk'}
	],
    enableKeyNav:true,
	columnLines: true,
	columns:[
		{text:"编号",dataIndex:'id',hidden: true},
		{text:'名称',dataIndex:'name',
			field:{
				xtype:'textfield',
				allowBlank:false
			}
		},
		{
		 text:'父级',dataIndex:'parentId',readOnly:false
		},
		{
			text:'时间',dataIndex:'createDate',readOnly:false
		}
	],
	plugins:[
		Ext.create('Ext.grid.plugin.RowEditing', {
           	clicksToEdit: 2,
           	autoCancel: false,
           	cancelBtnText: '取消',
       		saveBtnText: '保存'
        })
	],
	initComponent:function(){
		this.callParent(arguments)
	}
});