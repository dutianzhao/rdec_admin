Ext.define('Ext.ux.CityUtils', {
			alias : 'plugin.cityUtils',
			// 从上往下显示
			showCity : function() {
				// 加载省的数据
				var storeSheng = Ext.create('Ext.data.Store', {
							model : Ext.create('Ext.ux.modelFactory').getModelByName("City"),
							proxy : {
								type : 'ajax',
								url : contextPath + '/util/city',
								reader : {
									type : 'json'
								}
							},
							autoLoad : true,
							remoteSort : true
						});
				// 加载市的数据
				var storeShi = Ext.create('Ext.data.Store', {
							model : Ext.create('Ext.ux.modelFactory').getModelByName("City"),
							proxy : {
								type : 'ajax',
								url : contextPath + '/util/city',
								reader : {
									type : 'json'
								}
							},
							autoLoad : false,
							remoteSort : true
						});
				// 加载区的数据
				var storeQu = Ext.create('Ext.data.Store', {
							model : Ext.create('Ext.ux.modelFactory').getModelByName("City"),
							proxy : {
								type : 'ajax',
								url : contextPath + '/util/city',
								reader : {
									type : 'json'
								}
							},
							autoLoad : false,
							remoteSort : true

						});

				return cityView = {

					xtype : 'fieldset',
					flex : 1,
					title : '地址',
					defaultType : 'combobox',
					// layout: 'anchor',
					collapsible: true,
					defaults : {
						labelWidth : 60,
						anchor : '100%',
						allowBlank : false,
						autoScroll : true,
						displayField : 'name',
						valueField : 'id',
						emptyText : '请选择',// 默认值
						triggerAction : 'all',
						queryMode : 'local',
						selecOnFocus : true,
						forceSelection : true,
						allowBlank : false,
						editable : true
					},
					items : [{
								name : 'citySheng',
								fieldLabel : '选择省',
								store :storeSheng,
								emptyText : '请选择',
								blankText : '省不能为空',
								listeners : {
									select : function(combo, record, index) {
										try {
											var cityShi = Ext
													.getCmp('cityShi');
											var cityQu = Ext
													.getCmp('cityQu');
											cityShi.clearValue();
											cityQu.clearValue();
											cityShi.store.load({
														params : {
															parentId : combo
																	.getValue()
														}
													});
										} catch (ex) {
											showResult
													.showResultError("数据加载失败！");
										}

									}
								}
							}, {
								name : 'cityShi',
								id : "cityShi",
								store : storeShi,
								fieldLabel : '选择市',
								emptyText : '请选择市',
								listeners : {
									select : function(combo, record, index) {
										try {
											var cityQu = Ext
													.getCmp('cityQu');
											cityQu.clearValue();
											cityQu.store.load({
														params : {
															parentId : combo
																	.getValue()
														}
													});
										} catch (ex) {
											showResult.showResultError("数据加载失败！");
										}

									}
								}

							}, {
								name : 'cityId',
								id : 'cityQu',
								store : storeQu,
								fieldLabel : '选择区',
								emptyText : '请选择区'
							}, {
								fieldLabel : '详细地址',
								name : 'address',
								xtype : 'textfield'
							}]
				}

			}

		})