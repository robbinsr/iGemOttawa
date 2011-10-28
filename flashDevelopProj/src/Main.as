 package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.MovieClip;

	public class Main extends Sprite 
	{
		public static var backgroundImage:Background;
		
		public static var screens:ScreenHandler;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			backgroundImage = new Background(1);
			screens = new ScreenHandler();	
			addChild(backgroundImage);
			addChild(screens);
		}
	}
}