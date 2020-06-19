package controller;
import resourceManager.Resource;
import resourceManager.ResourceManager;
import resourceManager.TextFileReader;
import resourceManager.DBReader;

/**
 * ...
 * @author OTarasiuk
 */
final class ResourceController 
{
	
	private var resourceManager:ResourceManager;
	public static final instance:ResourceController = new ResourceController();


	private function new() 
	{
		
	}
	
 /**
 * ...
 * @return string value from given resource type and resource path
 */
	public function readResource( source: Resource, resourcePath:String):String{
		var content:String;
		switch source {
			case FILE: resourceManager = TextFileReader.getResourceManager();
			case DB: resourceManager = DBReader.getResourceManager();
			default: {return 'Mistake';}

		}
		content = resourceManager.readResource(resourcePath);
		return content;
	}
	
}