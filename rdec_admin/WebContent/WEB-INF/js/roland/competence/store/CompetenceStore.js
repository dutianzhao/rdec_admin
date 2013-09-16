Ext.define("LD.store.CompetenceStore",{
	extend:'Ext.data.Store',
	model:Ext.create('Ext.ux.modelFactory').getModelByName("competence.Competence"),
	proxy:{
		api:{
			delete_grid:contextPath + '/competence/delete_compet_by_id',
			save_or_update:contextPath+'/competence/save_or_update'
		},
		type:'ajax',
		url: contextPath + '/competence/me_competence',
		reader:{
			type:'json'
		},
		writer:{
			type:'json'
		}
	},
	autoLoad:true
});