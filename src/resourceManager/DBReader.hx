package resourceManager;

import sys.FileSystem;


/**
 * ...
 * @author OTarasiuk
 */
class DBReader implements ResourceManager
{

	private function new() 
	{
		
	}
 /**
 * ...
 * @return string value from given resource type and resource path
 */
	public function readResource(resourceName:String):String{
		trace('Stub');
		return 'Stub';
	}
	
 /**
 * ...
 * @return returns new instance of database reader
 */
	public static function getResourceManager():ResourceManager{
			return new DBReader();
		}

}