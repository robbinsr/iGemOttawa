package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.display.InteractiveObject;
	
	public class Level1 extends Level
	{	
		private var validInput:String = "";
		
		private var levelName:String = "Level 1";
		
		private var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
		
		public function Level1()
		{
			this.availableComponents = new Array(
			"0.0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9","0.10", "0.11", "0.12", "0.13", "0.14", "0.15", "0.16", "0.17",
			"2.0", "2.1", "2.2"
			);
			
			this.componentCategories = new Array(0, 2);
			this.currentSequence = new Array();
			this.winningSequence = new Array("0.0", "2.0");
				
			Main.backgroundImage.changeBackground(2);
			runIntro(levelName, scenario);
		}
	}
}