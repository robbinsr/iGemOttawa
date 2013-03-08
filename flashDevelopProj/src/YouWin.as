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
		
		private var slide:String = "<p>Congraulations! You beat Gears of Evolution! Your final time was ";
		private var slideEnd:String = "We at uOttawa iGem hope you enjoyed the game!</p>";
		
		private var text:TextShadow;
		
		public function YouWin()
		{	
			Main.backgroundImage.changeBackground(1);
			
			var finalMinutes:int = finalTime/60;
			var finalSeconds:int = finalTime%60;
			timeString = (finalMinutes > 0? finalMinutes+" minutes, ":"");
			timeString += finalSeconds + " seconds. ";
			slide += timeString + slideEnd;
			
			text = new TextShadow(slide,126,97,350,110,0);
			
			Main.backgroundImage.resetTimer();
			Main.backgroundImage.pauseTimer();
			
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			gameLogo.x = 127;
			gameLogo.y = 60;
			this.addChild(gameLogo);
			
			this.addChild(text);
			
			goBtn.y = 213;
			goBtn.x = 415;
			goBtn.addEventListener(MouseEvent.CLICK, skipFunction);
			this.addChild(goBtn);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		private function skipFunction(e:MouseEvent):void
		{
			Main.screens.switchTo("MainMenu");
		}
		
		private function removeListeners(e:Event):void 
		{
			goBtn.removeEventListener(MouseEvent.CLICK, skipFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
	}

}