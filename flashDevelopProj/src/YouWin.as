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

	
	public class YouWin extends General
	{		
		[Embed(source='../lib/logo.png')]
		private var gameLogoClass:Class;
		private var gameLogo:Bitmap = new gameLogoClass();
		private var finalTime:int = Main.backgroundImage.getTimer();
		private var timeString:String; 
		
		private var slide1:String = "<p>Congraulations! You beat Gears of Evolution!\n\nYour final time was ";
		
		private var slide2:String = "<p>We at uOttawa iGem hope you enjoyed the game! Expect more levels, as well as " +
		"an iPhone app soon!</p>";
		
		private var tutorialText:TextShadow;
		
		private static var slideState:int = 1;
		
		public function YouWin()
		{	
			var finalMinutes:int = finalTime/60;
			var finalSeconds:int = finalTime%60;
			timeString = (finalMinutes > 0? finalMinutes+" minutes, ":"");
			timeString += finalSeconds + " seconds.";
			slide1 += timeString + "</p>";
			
			tutorialText = new TextShadow(slide1,126,97,350,110,0);
			
			Main.backgroundImage.resetTimer();
			Main.backgroundImage.pauseTimer();
			
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
			if (slideState < 2) 
			{
				slideState += 1;
				tutorialText.setText(this["slide" + slideState]);
				
				if (slideState == 2) {
					this.removeChild(skipBtn);
					this.removeChild(nextBtn);
					this.addChild(goBtn);
				}
			}
		}
		
		private function skipFunction(e:MouseEvent):void
		{
			Main.screens.switchTo("MainMenu");
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