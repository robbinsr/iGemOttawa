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
	
	public class Level5 extends Level
	{
		public function Level5()
		{
			this.levelName = "<p>Level 5</p>";
			this.nextLevel = "Level6";
			
			var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
			
			this.levelEndText = "<p>Level ending text</p>";
			this.hint = "<p>Try doing this instead</p>";
			
			this.availableComponents = new Array("7.0", "7.1", "7.2");
			
			this.componentCategories = new Array("7");
			this.winningSequence = new Array("7.2");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(1);
			runIntro(levelName, scenario);
		}
	}
}