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
	
	public class Level3 extends Level
	{
		public function Level3()
		{
			this.levelName = "Level 3";
			this.nextLevel = "Level4";
			
			var scenario:String = "<p>Scenario introduction, telling user to grab the right promoter</p>";
			
			this.levelEndText = "<p>Level ending text</p>";
			this.hint = "<p>Try doing this instead</p>";
			
			this.availableComponents = new Array("0.0", "0.1", "0.2", "6.0");
			
			this.componentCategories = new Array(0,6);
			this.winningSequence = new Array("0.0", "6.0");
			
			Main.backgroundImage.changeBackground(4);
			plasmid.changePlasmid(4);
			runIntro(levelName, scenario);
		}
	}
}