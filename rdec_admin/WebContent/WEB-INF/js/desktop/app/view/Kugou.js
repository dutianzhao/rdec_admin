Ext.define('MyDesktop.Kugou', {
    extend: 'Ext.ux.desktop.Module',

    id:'kugou',
	//这个是控制开始菜单里面显示的
    init : function(){
        this.launcher = {
            text: '酷狗',
            iconCls:'kugou_log'
        }
    },

    createWindow : function(){
        var desktop = this.app.getDesktop();
        var win = desktop.getWindow(this.id);
        if(!win){
            win = desktop.createWindow({
                id: 'kugou',
                title:'酷狗音乐',
                height:423,
                width:540,
                iconCls: 'notepad',
                animCollapse:false,
                border: false,
                hideMode: 'offsets',
                maximizable:false, //最大化\
                resizable:false,
                layout: 'fit',
                html:'<iframe scrolling="no" frameborder="0" width="100%" height="100%" allowtransparency=true src="http://topic.kugou.com/radio/webqq.htm"></iframe>'
            });
        }
        return win;
    }
});
