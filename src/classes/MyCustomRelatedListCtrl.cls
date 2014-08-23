public with sharing class MyCustomRelatedListCtrl {

	private Id accountId {get; set;}
	public ApexPages.StandardSetController ssc {get; set;}

	public MyCustomRelatedListCtrl(ApexPages.StandardController sc){
		accountId = sc.getId();

		ssc = new ApexPages.StandardSetController(
			Database.getQueryLocator(
				'Select Id,Firstname,Lastname,Title,Email,Phone From Contact Where AccountId = :accountId'
			)
		);
	}

	/*
	 * There's a weird defect in assigning field set members to a controller variable.
	 * We need the members for querying the related records in the controller.
	 * Therefore, we have to generate a list of the related record's fields' api names first.
	 */
	/*
	public List<String> getRelatedFieldsArray(){
		List<String> ans = new List<String>();
		for(Schema.FieldSetMember fsm : SObjectType.Contact.FieldSets.ContactFields.getFields()){
			ans.add(fsm.getFieldPath());
		}
		return ans;
	}
	*/
}