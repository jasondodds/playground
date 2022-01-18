public class LeadsSelector extends fflib_SObjectSelector
	implements ILeadsSelector
{
	public static ILeadsSelector newInstance()
	{
		return (ILeadsSelector) Application.Selector.newInstance(Lead.SObjectType);
	}
	
	public List<Schema.SObjectField> getSObjectFieldList()
	{
		return new List<Schema.SObjectField> {
			Lead.Name,
			Lead.Email,
			Lead.Website
		};
	}
	
	public Schema.SObjectType getSObjectType()
	{
		return Lead.SObjectType;
	}

	public List<Lead> selectById(Set<Id> idSet)
	{
		return (List<Lead>) selectSObjectsById(idSet);
	}

}