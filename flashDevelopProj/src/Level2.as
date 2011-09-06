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
		public function Level2()
		{
			this.levelName = "Level 2";
			this.nextLevel = "Level3";
			
			var scenario:String = "<p>Promoters are pieces of DNA that help recruit the " +
			"transcriptional machinery to transcribe a sequence of DNA. They are always " +
			"located upstream of a coding region. In the context of this game, we classify " +
			"promoters into 3 types: low strength, medium strength and high strength. The " +
			"strength of the promoter will indicate the level of expression of the downstream " +
			"coding sequence. Remember when building a device to always select a promoter first " +
			"before selecting a coding sequence.</p>";
			
			// To do: Add next button for sliding between scenario text
			var scenario2:String = "<p>E.C. seems to be using a lot of energy expressing this " +
			"ampicillin resistance gene and the media he is growing in has run low in ampicillin " +
			"concentration. Help him conserve energy by clicking on the promoter icon located on " +
			"the bottom menu, then choosing an appropriate type of promoter to replace the high " +
			"strength promoter E.C. is currently using.</p>";
			
			this.levelEndText = "<p>Super! E.C. is now conserving much needed energy!</p>";
			this.hint = "<p>E.C. needs low expression of the AmpR gene. Which promoter would " +
			"fulfill this role best?</p>";
			
			this.availableComponents = new Array("2.0", "2.1", "2.2");
			
			this.componentCategories = new Array("2");
			this.winningSequence = new Array("2.2");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(2);
			runIntro(levelName, scenario);
		}
	}
}