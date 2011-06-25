package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Transition extends MovieClip{
		
		public var exitFrames:Number = 10;
		private var timer:Number = 0;
	
		public function Transition() {
			
			this.addEventListener(Event.ENTER_FRAME, remove);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			
		}
		
		private function remove(e:Event):void{
			
			timer++;
			
			if(timer >= 20){
				
				parent.removeChild(this);
				
			}
			
		}
		
		private function removeListeners(e:Event):void{
			
			this.removeEventListener(Event.ENTER_FRAME, remove);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			
		}
		
	}
	
}