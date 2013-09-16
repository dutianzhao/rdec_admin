Ext.define('MyDesktop.Rili', {
    extend: 'Ext.ux.desktop.Module',

    id:'rili',

    createWindow : function(){
        var desktop = this.app.getDesktop();
        var win = desktop.getWindow(this.id);
        if(!win){
            win = desktop.createWindow({
                id: 'rili',
                title:'365日历',
                height:465,
                width:540,
                iconCls: 'rili_logo',
                border: false,
                maximizable:false, 
                resizable:false,	//可拖动大小
                hideMode: 'offsets',
                layout: 'fit',
                html:'<iframe scrolling="no" frameborder="0" width="100%" height="100%" allowtransparency=true src="http://www.365rili.com/wnl3rd.html?app_random=1378970510132"></iframe>'
            });
        }
        return win;
    }
});
