package  {
	
	import flash.display.Bitmap;
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class MainMenu extends MovieClip {
		
		
		[Embed(source='../lib/bg.jpg')]
		private var layer0Class:Class;
		private var layer0:Bitmap = new layer0Class();
		
		[Embed(source='../lib/logo.gif')]
		private var logoClass:Class;
		private var logo:Bitmap = new logoClass();
		
		[Embed(source='../lib/play.png')]
		private var playBtnClass:Class;
		private var playBtnImg:Bitmap = new playBtnClass();
		
		[Embed(source='../lib/play_h.png')]
		private var playBtnHClass:Class;
		private var playBtnHImg:Bitmap = new playBtnHClass();
		
		private var playBtn:SimpleButton = new SimpleButton(playBtnImg, playBtnHImg, playBtnHImg, playBtnImg);
		
		public function MainMenu() {
			
			this.addChild(layer0);
			
			logo.x = 190;
			logo.y = 100;
			this.addChild(logo);
			
			playBtn.x = 235;
			playBtn.y = 300;
			playBtn.addEventListener(MouseEvent.CLICK, playFunction);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			this.addChild(playBtn);
		}
		
		private function playFunction(e:MouseEvent):void{
				
			Main.screens.switchTo("Tutorial");

		}
		
		private function removeListeners(e:Event):void{
			
			playBtn.removeEventListener(MouseEvent.CLICK, playFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
			
		}
	}
}