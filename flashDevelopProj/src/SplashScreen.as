package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;

	public class SplashScreen extends General
	{
		private var timer:Number = 0;
		
		[Embed(source='../lib/igem.png')]
		private var logoClass:Class;
		private var logo:Bitmap = new logoClass();
		
		public function SplashScreen()
		{
			this.addEventListener(Event.ENTER_FRAME, splashFunction);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}

		private function splashFunction(e:Event):void
		{	
			logo.y = 100;
			hCentre(logo);
			this.addChild(logo);
			
			timer++;
			if(timer == 80){
				Main.screens.switchTo("MainMenu");
			}
			
		}
		
		private function removeListeners(e:Event):void
		{	
			this.removeEventListener(Event.ENTER_FRAME, splashFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
	}
	
}