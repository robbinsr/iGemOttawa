package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	
	public class Tutorial extends MovieClip
	{		
		[Embed(source='../lib/logo.png')]
		private var gameLogoClass:Class;
		private var gameLogo:Bitmap = new gameLogoClass();
		
		[Embed(source='../lib/content.png')]
		private var contentClass:Class;
		private var content:Bitmap = new contentClass();
		
		private var textField:TextField = new TextField();
		private var shadow:TextField = new TextField();
		
		private var slide1:String = "<p>Welcome to the <strong>uOttawa 2010 iGem Game</strong>." +
		"The following is a basic tutorial detailing the general gameplay. If at any time " +
		"you’d like to skip this tutorial, press the skip button to proceed directly to the " + 
		"menu. To continue reading this brief guide, press the next button.</p>";
		
		// We use htmlText to parse strong tags. Unfortunately, Flash doesn't parse text-shadow, 
		// and DropShadowFilter won't work in this instance. So we're doing it ourselves
		
		public function Tutorial() 
		{	
			var style:StyleSheet = new StyleSheet();
			var css:String = "p {font-size: 11pt; color: #ebebeb; font-family: Tahoma;}" +
			"strong { font-weight: bold; display: inline; }";
			style.parseCSS(css);
			textField.styleSheet = style;
			
			var shadowStyle:StyleSheet = new StyleSheet();
			var css2:String = "p {font-size: 11pt; color: #101010; font-family: Tahoma;}" +
			"strong { font-weight: bold; display: inline; }";
			shadowStyle.parseCSS(css2);
			shadow.styleSheet = shadowStyle;
			
			content.x = 100;
			content.y = 36;
			this.addChild(content);
			
			gameLogo.x = 125;
			gameLogo.y = 58;
			this.addChild(gameLogo);
			
			shadow.mouseEnabled = false;
			shadow.wordWrap = true;
			shadow.htmlText = slide1;
			shadow.x = 125;
			shadow.y = 96;
			shadow.width = 350;
			shadow.height = 110;
			addChild(shadow);
			
			textField.mouseEnabled = false;
			textField.wordWrap = true;
			textField.htmlText = slide1;
			textField.x = 126;
			textField.y = 97;
			textField.width = 350;
			textField.height = 110;
			addChild(textField);
		}
		
	}

}