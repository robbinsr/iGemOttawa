package  
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;
	
	public class ScreenHandler extends Sprite
	{
		private var splashScreen:SplashScreen;
		private var mainMenu:MainMenu;
		private var tutorial:Tutorial;
		private var level1:Level1;
		private var level2:Level2;
		private var level3:Level3;
		private var level4:Level4;
		private var level5:Level5;
		private var level6:Level6;
		private var level7:Level7;
		private var level8:Level8;
		private var level9:Level9;
		private var level10:Level10;
		private var youWin:YouWin;
		
		private var newScreenName:String = "";
		
		private var screenLayer:Sprite = new Sprite();
		private var transitionLayer:Sprite = new Sprite();
		private var transition:Transition;
		private var transTimer:Number = 0;
		private var makeTransition:Boolean;
		
		public function ScreenHandler() 
		{
			this.addChild(screenLayer);
			this.addChild(transitionLayer);
			splashScreen = new SplashScreen();
			screenLayer.addChild(splashScreen);
		}
		
		public function switchTo(screenName:String, trans:Boolean = true):void
		{
			newScreenName = screenName;
			makeTransition = trans;
			this.addEventListener(Event.ENTER_FRAME, switchScreens);
		}
		
		private function switchScreens(e:Event):void
		{
			if(makeTransition){
				transTimer++;
				if(transTimer == 1 && transitionLayer.numChildren < 1){
					transition = new Transition();
					transitionLayer.addChild(transition);
				}
				if(transTimer == transition.exitFrames){
					removeOldScreen();
					makeNewScreen();
					transTimer = 0;
					this.removeEventListener(Event.ENTER_FRAME, switchScreens);
				}
			} else {
				removeOldScreen();
				makeNewScreen();
				this.removeEventListener(Event.ENTER_FRAME, switchScreens);
			}
		}
		
		private function removeOldScreen():void
		{
			var oldScreen:MovieClip;
			oldScreen = screenLayer.getChildAt(0) as MovieClip;
			screenLayer.removeChild(oldScreen);
		}
		
		private function makeNewScreen():void 
		{
			var screenClass:Class = getDefinitionByName(newScreenName) as Class;
			var firstLetter:String = newScreenName.substring(0, 1);
			var restLetters:String = newScreenName.substring(1, newScreenName.length);
			var screenNameLowerCase:String = firstLetter.toLowerCase() + restLetters;
			
			this[screenNameLowerCase] = new screenClass();
			
			screenLayer.addChild(this[screenNameLowerCase]);
			newScreenName = "";
		}
	}
}
