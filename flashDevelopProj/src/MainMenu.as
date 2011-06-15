package  {
	
	import flash.display.Bitmap;
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class MainMenu extends MovieClip {
		
		
		[Embed(source='../lib/menupage.PNG')]
		private var layer0Class:Class;
		private var layer0:Bitmap = new layer0Class();
		
		[Embed(source='../lib/playBtn.PNG')]
		private var playBtnClass:Class;
		private var playBtn:Bitmap = new playBtnClass();
		
		public function MainMenu() {
			
			this.addChild(layer0);
			
			playBtn.x = 235;
			playBtn.y = 300;
			playBtn.addEventListener(MouseEvent.CLICK, playFunction);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			this.addChild(playBtn);
		}
		
		private function playFunction(e:MouseEvent):void{
				
			Main.screens.switchTo("LevelSelect");
		}
		
		private function removeListeners(e:Event):void{
			
			playBtn.removeEventListener(MouseEvent.CLICK, playFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			
		}
	}
}