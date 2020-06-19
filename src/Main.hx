package;

import openfl.display.Sprite;
import openfl.Lib;
import controller.ResourceController;
import resourceManager.Resource;
import utils.Constants;

import flash.Lib;
import openfl.Assets;
import ru.stablex.ui.UIBuilder;
import ru.stablex.ui.widgets.Text;
import ru.stablex.ui.widgets.VBox;
import sys.FileSystem;


/**
 * ...
 * @author OTarasiuk
 */

class Main extends Sprite 
{
	private var controller:ResourceController = null; 
	
	public function new() 
	{
		super();
		controller = ResourceController.instance;
		var stringValue:String;
		stringValue = controller.readResource(FILE, Constants.FILENAME);
		trace(stringValue);
		
		
		  var vbox = UIBuilder.create(VBox,
         {
             w : 800,
             h : 800,
             childPadding : 20
         });

        var text = UIBuilder.create(Text, {
              text         : stringValue,
               embededFonts: true,
               format      : {
                   font    : Assets.getFont('fonts/OpenSans-Regular.ttf').fontName,
                   italic  : true,
                   color   : 0xFF0000,
                   size    : 18
               }
        });

        vbox.addChild(text);

        UIBuilder.regSkins('Assets/ui/skins.xml');
        Lib.current.addChild( UIBuilder.buildFn('Assets/ui/index.xml')() );
        Lib.current.addChild(vbox);
		
	}

}
