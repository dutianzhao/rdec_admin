Ext.define("LD.view.buttonView",{
	extend:'Ext.panel.Panel',
	alias:"widget.buttonPanel",
	initComponent: function () {
        var me = this;
        Ext.apply(this, {
            region:"south",
			margins:'3 0 0 0',
			frame:true,
			scripts : true,
			layoutConfig : {
				animate : true
			},
			bbar:
			[
				{ xtype: 'button',text:'修改密码',iconCls:'password_edit',id:'update_password'},"-",
				{ xtype: 'button',text:'退出',iconCls:'disconnect',id:"user_logout"},"-","->",
				{
					xtype: 'combo',
					rtl: false,
				    width: 150,
				    labelWidth: 45,
				    fieldLabel: '主题',
				    displayField: 'name',
				    valueField: 'value',
			//	    margin: '0 5 0 0',
				    store: Ext.create('Ext.data.Store', {
				    fields: ['value', 'name'],
				    data : [
				            { value: 'neptune', name: '蓝色风格' },
				            { value: 'classic', name: '经典风格' },
				            { value: 'access', name: '黑白风格' },
				            { value: 'gray', name: '灰色风格' }
				         ]
				     }),
		             value: theme,
				     listeners: 
				     {
				        select: function(combo) 
				        {
				            var theme = combo.getValue();
				            if (theme !== defaultTheme)
				            {
				               setParam({ theme: theme });
				            } 
				            else 
				            {
				               removeParam('theme');
				            }
				         }
				      }							
					}
			]
        });
        me.callParent(arguments);
    }
});


function getQueryParam(name, queryString) {
	var match = RegExp(name + '=([^&]*)').exec(queryString || location.search);
	return match && decodeURIComponent(match[1]);
}

function hasOption(opt) {
	var s = window.location.search;
	var re = new RegExp('(?:^|[&?])' + opt + '(?:[=]([^&]*))?(?:$|[&])', 'i');
	var m = re.exec(s);

	return m ? (m[1] === undefined ? true : m[1]) : false;
}

var scriptTags = document.getElementsByTagName('script'), defaultTheme = 'neptune', defaultRtl = false, i = scriptTags.length, requires = [
		'Ext.toolbar.Toolbar', 'Ext.form.field.ComboBox',
		'Ext.form.FieldContainer', 'Ext.form.field.Radio'

], defaultQueryString, src, theme, rtl;

while (i--) {
	src = scriptTags[i].src;
	if (src.indexOf('include-ext.js') !== -1) {
		defaultQueryString = src.split('?')[1];
		if (defaultQueryString) {
			defaultTheme = getQueryParam('theme', defaultQueryString)
					|| defaultTheme;
			defaultRtl = getQueryParam('rtl', defaultQueryString) || defaultRtl;
		}
		break;
	}
}

Ext.themeName = theme = getQueryParam('theme') || defaultTheme;

rtl = getQueryParam('rtl') || defaultRtl;

if (rtl.toString() === 'true') {
	requires.push('Ext.rtl.*');
	Ext.define('Ext.GlobalRtlComponent', {
				override : 'Ext.AbstractComponent',
				rtl : true
			});
}

Ext.getBody().addCls(Ext.baseCSSPrefix + 'theme-' + Ext.themeName);

if (Ext.isIE6 && theme === 'neptune') {
	Ext.Msg.show({
				title : 'Browser Not Supported',
				msg : '主题不支持IE6',
				buttons : Ext.Msg.OK,
				icon : Ext.Msg.WARNING
			});
}

if (hasOption('nocss3')) {
	Ext.supports.CSS3BorderRadius = false;
	Ext.getBody().addCls('x-nbr x-nlg');
}
function setParam(param) {
	var queryString = Ext.Object.toQueryString(Ext.apply(Ext.Object
							.fromQueryString(location.search), param));
	location.search = queryString;
}

function removeParam(paramName) {
	var params = Ext.Object.fromQueryString(location.search);

	delete params[paramName];

	location.search = Ext.Object.toQueryString(params);
}