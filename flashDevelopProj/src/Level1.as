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
		public function Level1()
		{
			this.levelName = "Level 1";
			this.nextLevel = "Level2";
			
			var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
			
			this.levelEndText = "<p>Level ending text</p>";
			this.hint = "<p>Try doing this instead</p>";
			
			this.availableComponents = new Array("5.0", "5.1", "5.2", "6.0");
			
			this.componentCategories = new Array(5,6);
			this.winningSequence = new Array("5.1", "6.0");
			
			Main.backgroundImage.changeBackground(2);
			runIntroSlowDarken(levelName, scenario);
		}
	}
}