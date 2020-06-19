package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_bold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_bolditalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_extrabold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_italic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_light_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_lightitalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_regular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_semibold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_opensans_semibolditalic_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_map_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_nme_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_tabbottom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_tabbottom_selected_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_tab_selected_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_win7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_winxp_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_license_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_bold_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_bolditalic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabold_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabolditalic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_italic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_light_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_lightitalic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibold_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibolditalic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file__textfile_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)


@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_bold_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Bold.ttf"; name = "Open Sans Bold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_bolditalic_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-BoldItalic.ttf"; name = "Open Sans Bold Italic"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabold_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-ExtraBold.ttf"; name = "Open Sans ExtraBold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabolditalic_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-ExtraBoldItalic.ttf"; name = "Open Sans ExtraBold Italic"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_italic_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Italic.ttf"; name = "Open Sans Italic"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_light_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Light.ttf"; name = "Open Sans Light"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_lightitalic_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-LightItalic.ttf"; name = "Open Sans Light Italic"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_regular_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Regular.ttf"; name = "Open Sans Regular"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibold_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-SemiBold.ttf"; name = "Open Sans SemiBold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibolditalic_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-SemiBoldItalic.ttf"; name = "Open Sans SemiBold Italic"; super (); }}


#else

@:keep @:expose('__ASSET__fonts_opensans_bold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_bold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Bold.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans Bold"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_bolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-BoldItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans Bold Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_extrabold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-ExtraBold.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans ExtraBold"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_extrabolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-ExtraBoldItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans ExtraBold Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_italic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_italic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Italic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_light_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_light_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Light.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans Light"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_lightitalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-LightItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans Light Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Regular.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans Regular"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_semibold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-SemiBold.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans SemiBold"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_semibolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-SemiBoldItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Open Sans SemiBold Italic"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bold_ttf extends openfl.text.Font { public function new () { name = "Open Sans Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bolditalic_ttf extends openfl.text.Font { public function new () { name = "Open Sans Bold Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabold_ttf extends openfl.text.Font { public function new () { name = "Open Sans ExtraBold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf extends openfl.text.Font { public function new () { name = "Open Sans ExtraBold Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_italic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_italic_ttf extends openfl.text.Font { public function new () { name = "Open Sans Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_light_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_light_ttf extends openfl.text.Font { public function new () { name = "Open Sans Light"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_lightitalic_ttf extends openfl.text.Font { public function new () { name = "Open Sans Light Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_regular_ttf extends openfl.text.Font { public function new () { name = "Open Sans Regular"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibold_ttf extends openfl.text.Font { public function new () { name = "Open Sans SemiBold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibolditalic_ttf extends openfl.text.Font { public function new () { name = "Open Sans SemiBold Italic"; super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bold_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Bold.ttf"; name = "Open Sans Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bolditalic_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-BoldItalic.ttf"; name = "Open Sans Bold Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabold_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-ExtraBold.ttf"; name = "Open Sans ExtraBold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-ExtraBoldItalic.ttf"; name = "Open Sans ExtraBold Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_italic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_italic_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Italic.ttf"; name = "Open Sans Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_light_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_light_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Light.ttf"; name = "Open Sans Light"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_lightitalic_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-LightItalic.ttf"; name = "Open Sans Light Italic"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_regular_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-Regular.ttf"; name = "Open Sans Regular"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibold_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-SemiBold.ttf"; name = "Open Sans SemiBold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibolditalic_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "fonts/OpenSans-SemiBoldItalic.ttf"; name = "Open Sans SemiBold Italic"; super (); }}

#end

#end
#end

#end
