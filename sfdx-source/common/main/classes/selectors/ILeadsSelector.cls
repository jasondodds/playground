public interface ILeadsSelector extends fflib_ISObjectSelector 
{
	List<Lead> selectById(Set<Id> idSet);
}