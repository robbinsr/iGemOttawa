package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.display.Bitmap;
	import flash.display.InteractiveObject;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;

	
	public class Tutorial extends General
	{		
		[Embed(source='../lib/logo.png')]
		private var gameLogoClass:Class;
		private var gameLogo:Bitmap = new gameLogoClass();
		
		// We use htmlText to parse strong tags. Unfortunately, Flash doesn't handle text-shadow, 
		// and DropShadowFilter won't work in this instance. So we're doing it ourselves
		
		private var textField:TextField = new TextField();
		private var shadow:TextField = new TextField();
		
		private var slide1:String = "<p>Welcome to the <strong>uOttawa 2010 iGem Game</strong>." +
		"The following is a basic tutorial detailing the general gameplay. If at any time " +
		"you’d like to skip this tutorial, press the skip button to proceed directly to the " + 
		"menu. To continue reading this brief guide, press the next button.</p>";
		
		private var slide2:String = "<p>Slide 2 - Testing the slides</p>";
		
		private var slide3:String = "<p>Slide 3 - More content can go here</p>";
		
		private var slide4:String = "<p>Slide 4 - Another test string</p>";
		
		private static var slideState:int = 1;
		
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
			
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			gameLogo.x = 127;
			gameLogo.y = 60;
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
			
			nextBtn.y = 213;
			nextBtn.x = 345;
			nextBtn.addEventListener(MouseEvent.CLICK, nextFunction);
			this.addChild(nextBtn);
			
			skipBtn.y = 213;
			skipBtn.x = 415;
			skipBtn.addEventListener(MouseEvent.CLICK, skipFunction);
			this.addChild(skipBtn);
			
			goBtn.y = 213;
			goBtn.x = 415;
			goBtn.addEventListener(MouseEvent.CLICK, skipFunction);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		private function nextFunction(e:MouseEvent):void
		{
			if (slideState < 4) 
			{
				slideState += 1;
				this.shadow.htmlText = this["slide" + slideState];
				this.textField.htmlText = this["slide" + slideState];
				
				if (slideState == 4) {
					this.removeChild(skipBtn);
					this.removeChild(nextBtn);
					this.addChild(goBtn);
				}
			}
		}
		
		private function skipFunction(e:MouseEvent):void
		{
			//Main.screens.switchTo("");
		}
		
		private function removeListeners(e:Event):void 
		{
			nextBtn.removeEventListener(MouseEvent.CLICK, nextFunction);
			skipBtn.removeEventListener(MouseEvent.CLICK, skipFunction);
			goBtn.removeEventListener(MouseEvent.CLICK, skipFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
	}

}