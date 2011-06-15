package  {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;

	public class ScreenHandler extends Sprite{
		private var splashScreen:SplashScreen;
		private var mainMenu:MainMenu;
		private var levelSelect:LevelSelect;
		
		private var newScreenName:String = "";
		
		private var screenLayer:Sprite = new Sprite();
		private var transitionLayer:Sprite = new Sprite();
		private var transition:Transition;
		private var transTimer:Number = 0;
		private var makeTransition:Boolean;
		
		public function ScreenHandler() {
			this.addChild(screenLayer);
			this.addChild(transitionLayer);
			splashScreen = new SplashScreen();
			screenLayer.addChild(splashScreen);
		}
		
		public function switchTo(screenName:String, trans:Boolean = true):void{
			newScreenName = screenName;
			makeTransition = trans;
			this.addEventListener(Event.ENTER_FRAME, switchScreens);
		}
		
		private function switchScreens(e:Event):void{
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
		
		private function removeOldScreen():void{
			var oldScreen:MovieClip;
			oldScreen = screenLayer.getChildAt(0) as MovieClip;
			screenLayer.removeChild(oldScreen);
		}
		
		private function makeNewScreen():void{
			switch(newScreenName){
				case "SplashScreen":
					splashScreen = new SplashScreen();
					screenLayer.addChild(splashScreen);
				break;
				case "MainMenu":
					mainMenu = new MainMenu();
					screenLayer.addChild(mainMenu);
				break;
				case "LevelSelect":
					levelSelect = new LevelSelect();
					screenLayer.addChild(levelSelect);
				break;
				default:
					mainMenu = new MainMenu();
					screenLayer.addChild(mainMenu);
				break;
			}
			newScreenName = "";
		}
	}
}
