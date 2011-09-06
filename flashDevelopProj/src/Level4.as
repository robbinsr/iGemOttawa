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
	
	public class Level4 extends Level
	{
		public function Level4()
		{
			this.levelName = "Level 4";
			this.nextLevel = "Level5";
			
			var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
			
			this.levelEndText = "<p>Level ending text</p>";
			this.hint = "<p>Try doing this instead</p>";
			
			this.availableComponents = new Array("1.0", "1.1", "1.2", "4.0", "4.1", "4.2");
			
			this.componentCategories = new Array("1","4");
			this.winningSequence = new Array("1.2", "4.0");
			
			Main.backgroundImage.changeBackground(1);
			plasmid.changePlasmid(1);
			runIntro(levelName, scenario);
		}
	}
}