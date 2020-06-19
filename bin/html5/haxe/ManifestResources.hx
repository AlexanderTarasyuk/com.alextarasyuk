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

		data = '{"name":null,"assets":"aoy4:pathy13:img%2Fmap.jpgy4:sizei614077y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y13:img%2Fnme.pngR2i872R3R4R5R7R6tgoR0y13:img%2Ftab.pngR2i473R3R4R5R8R6tgoR0y19:img%2FtabBottom.pngR2i452R3R4R5R9R6tgoR0y28:img%2FtabBottom_selected.pngR2i442R3R4R5R10R6tgoR0y22:img%2Ftab_selected.pngR2i458R3R4R5R11R6tgoR0y14:img%2Fwin7.pngR2i584R3R4R5R12R6tgoR0y15:img%2Fwinxp.pngR2i1077R3R4R5R13R6tgoR0y19:fonts%2FLICENSE.txtR2i11560R3y4:TEXTR5R14R6tgoR2i104120R3y4:FONTy9:classNamey32:__ASSET__fonts_opensans_bold_ttfR5y25:fonts%2FOpenSans-Bold.ttfR6tgoR2i92628R3R16R17y38:__ASSET__fonts_opensans_bolditalic_ttfR5y31:fonts%2FOpenSans-BoldItalic.ttfR6tgoR2i102076R3R16R17y37:__ASSET__fonts_opensans_extrabold_ttfR5y30:fonts%2FOpenSans-ExtraBold.ttfR6tgoR2i92772R3R16R17y43:__ASSET__fonts_opensans_extrabolditalic_ttfR5y36:fonts%2FOpenSans-ExtraBoldItalic.ttfR6tgoR2i92240R3R16R17y34:__ASSET__fonts_opensans_italic_ttfR5y27:fonts%2FOpenSans-Italic.ttfR6tgoR2i101696R3R16R17y33:__ASSET__fonts_opensans_light_ttfR5y26:fonts%2FOpenSans-Light.ttfR6tgoR2i92488R3R16R17y39:__ASSET__fonts_opensans_lightitalic_ttfR5y32:fonts%2FOpenSans-LightItalic.ttfR6tgoR2i96932R3R16R17y35:__ASSET__fonts_opensans_regular_ttfR5y28:fonts%2FOpenSans-Regular.ttfR6tgoR2i100820R3R16R17y36:__ASSET__fonts_opensans_semibold_ttfR5y29:fonts%2FOpenSans-SemiBold.ttfR6tgoR2i92180R3R16R17y42:__ASSET__fonts_opensans_semibolditalic_ttfR5y35:fonts%2FOpenSans-SemiBoldItalic.ttfR6tgoR0y16:.%2FtextFile.txtR2i17R3R15R5R38gh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

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

@:keep @:image("assets/img/map.jpg") @:noCompletion #if display private #end class __ASSET__img_map_jpg extends lime.graphics.Image {}
@:keep @:image("assets/img/nme.png") @:noCompletion #if display private #end class __ASSET__img_nme_png extends lime.graphics.Image {}
@:keep @:image("assets/img/tab.png") @:noCompletion #if display private #end class __ASSET__img_tab_png extends lime.graphics.Image {}
@:keep @:image("assets/img/tabBottom.png") @:noCompletion #if display private #end class __ASSET__img_tabbottom_png extends lime.graphics.Image {}
@:keep @:image("assets/img/tabBottom_selected.png") @:noCompletion #if display private #end class __ASSET__img_tabbottom_selected_png extends lime.graphics.Image {}
@:keep @:image("assets/img/tab_selected.png") @:noCompletion #if display private #end class __ASSET__img_tab_selected_png extends lime.graphics.Image {}
@:keep @:image("assets/img/win7.png") @:noCompletion #if display private #end class __ASSET__img_win7_png extends lime.graphics.Image {}
@:keep @:image("assets/img/winxp.png") @:noCompletion #if display private #end class __ASSET__img_winxp_png extends lime.graphics.Image {}
@:keep @:file("assets/fonts/LICENSE.txt") @:noCompletion #if display private #end class __ASSET__fonts_license_txt extends haxe.io.Bytes {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-Bold.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_bold_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-BoldItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_bolditalic_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-ExtraBold.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabold_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-ExtraBoldItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabolditalic_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-Italic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_italic_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-Light.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_light_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-LightItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_lightitalic_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-Regular.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_regular_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-SemiBold.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibold_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/OpenSans-SemiBoldItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibolditalic_ttf extends lime.text.Font {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__fonts_opensans_bold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_bold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Bold"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 938; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Bold"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_bolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-BoldItalic"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 936; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Bold Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_extrabold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-ExtraBold"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 938; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans ExtraBold"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_extrabolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_extrabolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-ExtraBoldItalic"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 936; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans ExtraBold Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_italic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_italic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Italic"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 936; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_light_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_light_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Light"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 936; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Light"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_lightitalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-LightItalic"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 936; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Light Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-Regular"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 938; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Regular"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_semibold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-SemiBold"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 938; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans SemiBold"; super (); }}
@:keep @:expose('__ASSET__fonts_opensans_semibolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_opensans_semibolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/OpenSans-SemiBoldItalic"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 936; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans SemiBold Italic"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_bold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_bolditalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_extrabold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_extrabolditalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_italic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_italic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_italic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_light_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_light_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_light_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_lightitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_lightitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_semibold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_semibolditalic_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_bold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_bolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_bolditalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_extrabold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_extrabolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_extrabolditalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_italic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_italic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_italic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_light_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_light_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_light_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_lightitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_lightitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_semibold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_opensans_semibolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_opensans_semibolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_opensans_semibolditalic_ttf ()); super (); }}

#end

#end
#end

#end
