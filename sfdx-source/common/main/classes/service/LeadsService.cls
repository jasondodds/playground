global with sharing class LeadsService 
{		

	private static ILeadsService service()
	{
		return (ILeadsService) Application.Service.newInstance(ILeadsService.class);
	}	
}