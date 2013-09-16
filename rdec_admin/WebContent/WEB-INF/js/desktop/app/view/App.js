Ext.define("MyDesktop.App",{
	extend: 'Ext.ux.desktop.App',
	
	requires: [
        'Ext.ux.desktop.ShortcutModel',
        'MyDesktop.Notepad',
        'MyDesktop.Settings',
        'MyDesktop.Kugou',
        'MyDesktop.Rili'

    ],
	
	init:function(){
		this.callParent()
	},
	 getModules : function(){
        return [
            new MyDesktop.Notepad(),
            new MyDesktop.Kugou(),
            new MyDesktop.Rili()
        ];
    },
     getDesktopConfig: function () {
        var me = this, ret = me.callParent();

        return Ext.apply(ret, {

            contextMenuItems: [
                { text: '个性化', handler: me.onSettings, scope: me , iconCls:'arrow_refresh'}
            ],
			/**桌面图标**/
            shortcuts: Ext.create('Ext.data.Store', {
                model: 'Ext.ux.desktop.ShortcutModel',
                data: [
                	{ name: '用户管理', iconCls: 'accordion-shortcut' },
                	{ name: '数据统计', iconCls: 'grid-shortcut' },
                	{ name: '编辑器', iconCls: 'notepad-shortcut', module: 'notepad' },
                	{ name: '酷狗电台', iconCls: 'kugou_log',module: 'kugou'},//http://baidu365.duapp.com/wnl.html?bd_user=1712286784&bd_sig=2f8e3ed0caf0c29b240edfdefdc09ef3&canvas_pos=platform
                	{ name: '日历', iconCls: 'rili_logo',module: 'rili'}
                ]
            }),

            wallpaper: contextPath + '/js/desktop/wallpapers/window7.jpg',
            wallpaperStretch: false
        });
    },
    getStartConfig : function() {
        var me = this, ret = me.callParent();

        return Ext.apply(ret, {
            title: '开始菜单',
            iconCls: 'user',
            height: 300,
            toolConfig: {
                width: 100,
                items: [
                    {
                        text:'个性化',
                        iconCls:'settings',
                        handler: me.onSettings,
                        scope: me
                    },'-',
                    {
                        text:'后台管理',
                        iconCls:'settings',
                        handler: function(){
                        	window.location.href = "extmain";
                        },
                        scope: me
                    },
                    
                    '-',
                    {
                        text:'退出',
                        iconCls:'logout',
                        handler: me.onLogout,
                        scope: me
                    }
                ]
            }
        });
    },

    getTaskbarConfig: function () {
        var ret = this.callParent();

        return Ext.apply(ret, {
            quickStart: [
         //       { name: 'Accordion Window', iconCls: 'accordion', module: 'acc-win' },
          //      { name: 'Grid Window', iconCls: 'icon-grid', module: 'grid-win' }
            ],
            trayItems: [
                { xtype: 'trayclock', flex: 1 }
            ]
        });
    },

    onLogout: function () {
        Ext.Msg.confirm('Logout', '你确定要退出管理平台吗?',function(btn, text){
					    	if(btn == 'yes')
					    	{
					    		Ext.Ajax.request({
					    			waitMsg : '正在退出请稍后...',  
								    url: contextPath + '/user/logout',
								     success:function(form,action)
				                    {
					   					window.location.href = contextPath;
					   				}
								});
					    	}
					    });
    },

    onSettings: function () {
        var dlg = new MyDesktop.Settings({
            desktop: this.desktop
        });
        dlg.show();
    }
})