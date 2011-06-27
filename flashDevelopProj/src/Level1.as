package  
{
	import flash.display.Bitmap;
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Level1 extends Level
	{
		
		private var validInput:String = "";
		
		public function Level1()
		{
			// Testing background change
			Main.backgroundImage.changeBackground(2);
		}
	}
}