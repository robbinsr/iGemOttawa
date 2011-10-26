 package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	
	
	
	
	
	//Debug
	import flash.display.DisplayObjectContainer;
	import flash.events.MouseEvent;
	//End debug
	
	
	
	
	

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
			
			
			
			
			
			
			
			
			
			
			//Debug
			this.addEventListener(MouseEvent.CLICK  , traceAllChildren);
		}
		
		private function traceAllChildren(E:Event):void {
			traceFrom(this);
		}
		private function traceFrom(rootContainer:DisplayObjectContainer):void {
			trace("\n" + rootContainer + rootContainer.name + " has children: ");
			for (var i: int = 0; i < rootContainer.numChildren; i++) {
				trace("   " + rootContainer.getChildAt(i) + rootContainer.getChildAt(i).name);
			}
			for (var ii: int = 0; ii < rootContainer.numChildren; ii++) {
                var item:* = rootContainer.getChildAt(ii);
                try {
                    traceFrom(item);
                } catch (e:Error) {
                    //no children
                }
			}
		}
		//End debug
	}
}