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
	
	public class Level7 extends Level
	{
		public function Level7()
		{
			this.levelName = "Level 7";
			this.nextLevel = "Level8";
			
			var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
			
			this.levelEndText = "<p>Level ending text</p>";
			this.hint = "<p>Try doing this instead</p>";
			
			this.availableComponents = new Array("2.0", "2.1", "2.2", "6.0");
			
			this.componentCategories = new Array(2,6);
			this.winningSequence = new Array("2.2", "6.0");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(2);
			runIntro(levelName, scenario);
		}
	}
}