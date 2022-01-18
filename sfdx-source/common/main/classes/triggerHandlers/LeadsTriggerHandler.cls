public inherited sharing class LeadsTriggerHandler extends fflib_SObjectDomain {
    public LeadsTriggerHandler(List<Lead> sObjectList)
	{
		// Domain classes are initialised with lists to enforce bulkification throughout
		super(sObjectList);
	}

    public override void onAfterInsert()
	{
		System.debug('Lead has been created');
	}

    public class Constructor implements fflib_SObjectDomain.IConstructable
	{
		public fflib_SObjectDomain construct(List<SObject> sObjectList)
		{
			return new LeadsTriggerHandler(sObjectList);
		}
	}
}
