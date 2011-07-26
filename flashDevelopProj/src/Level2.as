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
	
	public class Level2 extends Level
	{	
		private var validInput:String = "";
		
		private var levelName:String = "Level 2";
		
		private var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
		
		public function Level2()
		{
			this.levelEndText = "<p>Level ending text</p>";
			
			this.availableComponents = new Array(
				"5.0", "5.1", "5.2", "6.0"
			);
			
			this.componentCategories = new Array(5,6);
			this.winningSequence = new Array("5.1", "6.0");
			
			Main.backgroundImage.changeBackground(3);
			runIntro(levelName, scenario);
		}
	}
}