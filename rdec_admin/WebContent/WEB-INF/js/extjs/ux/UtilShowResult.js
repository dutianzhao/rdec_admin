Ext.define('Ext.ux.UtilShowResult', {
    alias: 'plugin.utilShowResult',
	//从上往下显示
	showResultMsg:function(msg)
	{
		return  parent.Ext.example.msg("友情提示",msg);
	},
	//错误
	showResultError:function(msg)
	{
		return parent.Ext.MessageBox.show({
		title: '友情提示',
		msg: msg,
		buttons: Ext.MessageBox.OK,
		icon: 'x-message-box-error'
		});
	},
	//普通叹号
	showResulInfo:function(msg)
	{
		return parent.Ext.MessageBox.show({
		title: '友情提示',
		msg: msg,
		buttons: Ext.MessageBox.OK,
		icon: 'x-message-box-info'
		});
	},
	//问号
	showResultQuestion:function(msg)
	{
		return parent.Ext.MessageBox.show({
		title: '友情提示',
		msg: msg,
		buttons: Ext.MessageBox.OK,
		icon: 'x-message-box-question'
		});
	},
	//黄色叹号
	showResultWarning:function(msg)
	{
		return parent.Ext.MessageBox.show({
		title: '友情提示',
		msg: msg,
		buttons: Ext.MessageBox.OK,
		icon: 'x-message-box-warning'
		});
	}
	//
	
})
var utilShowMsg = Ext.create("Ext.ux.UtilShowResult");