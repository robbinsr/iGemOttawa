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
			this.currentLevel = "Level5";
			this.levelName = "<p>Level 5</p>";
			this.nextLevel = "Level6";
			
			var scenario:String = "<p>Another regulatory class of proteins that can bind to operators " +
			"are called activators. An activator will greatly increase the rate of transcription of a " +
			"downstream coding sequence. Some activators must be induced by the presence of an " +
			"antibiotic. Dr. Power has added a large volume of the antibiotic tetracycline to the " +
			"media in which E.C. is growing which is also deadly. E.C. has a gene called tetA that " +
			"will help confer resistance to tetracycline but it is not being actively transcribed. " +
			"How could we enable transcription of this gene using activators and operators? Assume " +
			"that the operator will be added to a pre-existing promoter.</p>";
			
			this.levelEndText = "<p>Great, now E.C. can actively transcribe the tetA gene!</p>";
			this.hint = "<p> Activators are sometimes inducible by a certain drug, which activator " +
			"is best suited to the current conditions and which operator best corresponds to it?</p>";
			
			this.availableComponents = new Array("1.0", "1.1", "1.2", "4.0", "4.1", "4.2", "7.5");
			
			this.componentCategories = new Array("1","4", "7");
			this.winningSequence = new Array("7.5", "1.1");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(1);
			runIntro(levelName, scenario);
		}
	}
}