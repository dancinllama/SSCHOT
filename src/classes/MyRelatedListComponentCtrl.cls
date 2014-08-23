public with sharing class MyRelatedListComponentCtrl{

	//Member Variables
	public Id						   		parentRecordId 					{get; set;}
	//public Schema.FieldSetMember[]  		relatedRecordsFieldSetMembers 	{get; set;}
	public String[]  						relatedRecordsFieldSetMembers 	{get; set;}
	public String 					   		parentRelationshipApiName       {get; set;}
	public String 							relatedRecordsApiName			{get; set;}
	public ApexPages.StandardSetController 	ssc 							{get; set;}

	public MyRelatedListComponentCtrl(){}

	/**
	 * getRelatedRecords
	 * @description Instanciates the ssc if it has not yet been instanciated.
	 * The ssc queries for related records under
	 * Then, 
	 */
	public List<sObject> getRelatedRecords(){
		if(ssc == null){
			ssc = new ApexPages.StandardSetController(
				Database.getQueryLocator(getQuery())
			);
		}
		return ssc.getRecords();
	}

	//Generate query based off of field set members requested
	//Based on this example: http://www.salesforce.com/us/developer/docs/pages/Content/pages_dynamic_vf_field_sets.htm
	private String getQuery(){
		String query = 'Select Id';
		for(String member : relatedRecordsFieldSetMembers){
			query += ',' + member;
		}
		query += ' From ' + relatedRecordsApiName + ' Where ' + parentRelationshipApiName  + ' = :parentRecordId';
		System.debug(LoggingLevel.INFO,'Related Records Query: ' + query);
		return query;
	}
}