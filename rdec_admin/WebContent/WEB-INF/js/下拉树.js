Ext.define('Demo.view.Viewport', {
	extend: 'Ext.container.Viewport',
	margin:'100 0 0 200',
	items:[{
		xtype:'form',
		title:'下拉树菜单',
		height: 500,
		width: 700,
		items:[{
			xtype: 'treepicker',
			fieldLabel: '下拉树',
			width: 400,
			labelWidth: 60,
			margin: '100 0 0 150',
			displayField: 'text',
			rootVisible: false,
			value: '',
			minPickerHeight: 200,
			store: Ext.create('Ext.data.TreeStore',{
				fields: ['id','text'],
				root: {
					text: '天朝部门',
					expanded: true
				},
				proxy: {
					type: 'ajax',
					url: 'app/data/tree.json',
					reader: {
						type: 'json'
					}
				}
			})
		}]
	}]
});
