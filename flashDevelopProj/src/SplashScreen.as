package  {
	
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;

	public class SplashScreen extends MovieClip {
		
		private var timer:Number = 0;
		
		[Embed(source='../lib/bg.jpg')]
		private var layer0Class:Class;
		private var layer0:Bitmap = new layer0Class();
		
		[Embed(source='../lib/logo.gif')]
		private var logoClass:Class;
		private var logo:Bitmap = new logoClass();
		
		public function SplashScreen() {
			
			addChild(layer0);
			
			this.addEventListener(Event.ENTER_FRAME, splashFunction);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			
		}

		private function splashFunction(e:Event):void{
			
			this.addChild(layer0);
			
			logo.x = 190;
			logo.y = 100;
			this.addChild(logo);
			
			timer++;
			
			if(timer == 80){
				
				Main.screens.switchTo("MainMenu");
				
			}
			
		}
		
		private function removeListeners(e:Event):void{
			
			this.removeEventListener(Event.ENTER_FRAME, splashFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			
		}
		
	}
	
}