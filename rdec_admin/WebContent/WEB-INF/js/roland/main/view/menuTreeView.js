Ext.define('LD.view.menuTreeView', {
			alias : 'widget.menuTreePanel',
			extend : 'Ext.panel.Panel',
			initComponent: function () {
		        var me = this;
		        Ext.apply(this, {
		            region : 'west',
					title: '功能菜单',
				    split: true,
				    frame:true,
				    width: 200,
				    minWidth: 175,
				    maxWidth: 400,
				    collapsible: true,
				    animCollapse: true,
				    layout: 'accordion',
				    scripts : true,
				    id:'left_compet_accord',
					layoutConfig : {
						animate : true
					}
		        });
		        
		        Ext.get('loading-msg').update('正在加载菜单...');  
		        var ajax = function(config) { 
					Ext.Ajax.request({
						url : config.url,
						params : config.params, 
						method : 'post',
						callback : function(options, success, response) {
							config.callback(Ext.JSON.decode(response.responseText));
							//调用回调函数
						}
					});
					return false;
				};
				
				
				ajax({
					url :  contextPath + '/ext_left',//获取面板的地址
					callback : addTree
				});
				
				
				function addTree(data)
				{
					
					Ext.each(data, function(data) 
					{
						var tree = Ext.create("Ext.tree.Panel", {
							title : data.text,
							iconCls : data.iconCls,
							autoScroll : true,
							rootVisible : false,
							fram:true,
							viewConfig : {
								loadingText : "正在加载..."
							},
							store : createStore(data.id)
							
						});
						
						tree.on("cellClick", function(item, index, e,node){
							
							 e.stopEvent;		
							//node.isLeaf()
							if(true)
							{
								
								var centerPanel = tree.ownerCt.ownerCt.child("#tabpanel");
								
								var exist=false;
							    centerPanel.items.each(function(item)
							    {
							    	
							        if(item.title==node.data.text){
							            centerPanel.setActiveTab(item);
							            exist=true;
							        }
							    });
							    if(exist){
							        return;
							    }
								Ext.Msg.wait('页面加载中...','请稍后');

							    var theme = '' ;
							    if(getQueryParam() != null)
							    {
							    	theme = "/?theme=" + getQueryParam()
							    }
							    
							    
							    varLoadHtml = contextPath + node.data.clickHref+ theme ;
							    
								n = centerPanel.add({
						            'id':  "windows"+node.data.id,
							        'iconCls':node.data.iconCls,
							        'title':node.data.text,
							        closable: true, 
							        scripts:true,
       							    html: '<iframe id="'+"windows"+node.data.id+'" name="'+"windows"+node.data.id+'" scrolling="auto" frameborder="0" width="100%" height="100%" onload="Ext.Msg.hide()" src="'+varLoadHtml+'"></iframe>',
       							    autoDestroy:true,
                                	destroy:function (){//销毁tabpanel
                                    if(this.fireEvent("destroy",this)!=false){
                                        this.el.remove();
                                        getTabPage = null;
                                        tabPage = null;
                                        if(Ext.isIE){
                                            CollectGarbage();
                                       	 }
                                    	}
                               		 }
						        }).show();
						        centerPanel.setActiveTab(n);
							}
	                       				
						});
						me.add(tree); 
						
					
						
						
						me.doLayout();
					});
					Ext.get('loading-msg').update('加载完成.');  
	       			closeLoadIng();  
				}
			   var createStore  =  function(id){ //创建树面板数据源
				   var me = this;
				   return Ext.create("Ext.data.TreeStore",{
					  defaultRootId : id, //默认的根节点id
					  model : Ext.create('Ext.ux.modelFactory').getModelByName("MenuTreeDTO"),
					  method:'POST',
					  proxy : {
						  type : "ajax", //获取方式
						  url :  contextPath + '/ext_left' //获取树节点的地址
					  },
					  clearOnLoad : true,
					  nodeParam : "compId"
					  //设置传递给后台的参数名,值是树节点的id属性
				   });
			   }
		        me.callParent(arguments);
		    }
		});