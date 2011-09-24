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
			this.levelName = "<p>Level 1</p>";
			this.nextLevel = "Level2";
			
			var scenario:String = "<p>Dr. Power has plated our bacterial friend E.C. onto a Petri " +
			"dish containing the antibiotic ampicillin, a drug that is toxic to E.C. In order for " +
			"E.C. to survive, he will need to express a gene that would confer ampicillin " +
			"resistance to him. Select the correct gene by going to the resistance gene icon on the " +
			"bottom menu and clicking on it. This will now give ampicillin resistance to E.C.!</p>";
			
			this.levelEndText = "<p>Great! E.C. has thwarted Dr. Power’s plans!</p>";
			this.hint = "<p>E.C. needs a resistance gene that is specific to the " +
			"antibiotic ampicillin. Which resistance gene would fulfill this role best?</p>";
			
			this.availableComponents = new Array("5.0", "5.1", "5.2");
			
			this.componentCategories = new Array("5");
			this.winningSequence = new Array("5.0");
			
			Main.backgroundImage.changeBackground(2);
			runIntroSlowDarken(levelName, scenario);
			
			componentOrder = new Array(0,2,4,6,1,3,5,7);
			minComponent = 2;
			maxComponent = 4;
		}
	}
}