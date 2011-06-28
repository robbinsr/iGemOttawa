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
		
		private var slide1:String = "<p>Welcome to the <strong>uOttawa 2010 iGem Game</strong>." +
		"The following is a basic tutorial detailing the general gameplay. If at any time " +
		"you’d like to skip this tutorial, press the skip button to proceed directly to the " + 
		"menu. To continue reading this brief guide, press the next button.</p>";
		
		private var slide2:String = "<p>Slide 2 - Testing the slides</p>";
		
		private var slide3:String = "<p>Slide 3 - More content can go here</p>";
		
		private var slide4:String = "<p>Slide 4 - Another test string</p>";
		
		private var tutorialText:TextShadow = new TextShadow(slide1);
		
		private static var slideState:int = 1;
		
		public function Tutorial() 
		{	
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			gameLogo.x = 127;
			gameLogo.y = 60;
			this.addChild(gameLogo);

			this.addChild(tutorialText);
			
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
				tutorialText.setText(this["slide" + slideState]);
				
				if (slideState == 4) {
					this.removeChild(skipBtn);
					this.removeChild(nextBtn);
					this.addChild(goBtn);
				}
			}
		}
		
		private function skipFunction(e:MouseEvent):void
		{
			Main.screens.switchTo("Level1");
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