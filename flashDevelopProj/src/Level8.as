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
	
	public class Level8 extends Level
	{
		public function Level8()
		{
			this.currentLevel = "Level8";
			this.levelName = "<p>Level 8</p>";
			this.nextLevel = "Level9";
			
			var scenario:String = "<p>Dr. Power has placed E.C. in arsenic rich well water and we " +
			"need to help him escape by building a device that will increase his buoyancy. Lets also " +
			"do the environment a favor and clean up this arsenic, a toxic heavy metal. However, we " +
			"first have to import arsenic into his cytosol. A cell membrane protein GlpF will allow " +
			"for import of arsenic into the cytosol. Start by building a device that allows E.C. to " +
			"import the largest quantity of arsenic.</p>";
			
			this.levelEndText = "<p>Good job, now E.C. is actively importing high quantities of " +
			"Arsenic into its cytosol!</p>";
			this.hint = "<p>-Remember that we want a high quantity of GlpF being produced, how would we " + 
			"achieve this?</p>";
			
			this.availableComponents = new Array("0.11", "0.3", "0.12", "1.0", "1.1", "1.2", "2.4", "2.5", "2.2", 
			"4.0", "4.1", "4.2", "5.0", "5.1", "5.2", "7.0", "7.1", "7.2");
			
			this.componentCategories = new Array("0","1","2","4","5","7");
			this.winningSequence = new Array("2.4", "0.3");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(2);
			runIntro(levelName, scenario);
			
			componentOrder = new Array(0,1,2,3,4,5,6,7);
			preExistingComponents = new Array();
			minComponent = 0;
			maxComponent = 2;
		}
	}
}