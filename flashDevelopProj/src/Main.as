package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.MovieClip;

	public class Main extends Sprite 
	{
		public static var screens:ScreenHandler = new ScreenHandler();
		
		public static var backgroundImage:Background = new Background(1);
		
		public function Main():void 
		{
			this.addChild(backgroundImage);
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addChild(screens);
		}
		
	}
}