public inherited sharing class Leads extends fflib_SObjects 
    implements ILeads
{
    public static ILeads newInstance(List<Lead> recordList)
	{
		return (ILeads) Application.Domain.newInstance(recordList);
	}

	public static ILeads newInstance(Set<Id> recordIdSet)
	{
		return (ILeads) Application.Domain.newInstance(recordIdSet);
	}
	
	public Leads(List<Lead> sObjectList)
	{
		// Domain classes are initialised with lists to enforce bulkification throughout
		super(sObjectList);
	}

    public class Constructor implements fflib_IDomainConstructor
	{
		public fflib_SObjects construct(List<Object> objectList)
		{
			return new Leads((List<SObject>) objectList);
		}
	}
}
