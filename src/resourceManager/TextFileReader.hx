package resourceManager;

import sys.FileSystem;


/**
 * ...
 * @author OTarasiuk
 */
class TextFileReader implements ResourceManager
{

	private function new() 
	{
		
	}
	
 /**
 * ...
 * @return returns new instance of text files reader
 */
	public static function getResourceManager():ResourceManager{
			return new TextFileReader();
		}
/**
 * ...
 * @return string value from given resource type and resource path
 */
	
	public function readResource(resourceName:String):String{
		
		#if sys
		var stringValue : String = 'No file '+resourceName;
        var exist = FileSystem.exists(resourceName);
        if (exist) stringValue = sys.io.File.getContent(resourceName);
		trace(stringValue);
		#end
		
		return stringValue;
	}
}