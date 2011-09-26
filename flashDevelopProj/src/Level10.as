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
	
	public class Level10 extends Level
	{
		public function Level10()
		{
			this.currentLevel = "Level10";
			this.levelName = "<p>Level 10</p>";
			this.nextLevel = "Level11";
			
			var scenario:String = "<p>The only thing left to do is to construct a device that will " +
			"allow E.C. to escape while removing a hazardous heavy metal from drinking water. A " +
			"gas vesicle producing protein called GVP would increase the buoyancy of E.C. to allow " +
			"it to escape. How can we induce this gas vesicle producing protein to make it express " +
			"under high concentrations of arsenic? </p>";
			
			this.levelEndText = "<p>Well done! Not only has E.C. escaped but he has also managed to " +
			"sequester the toxic arsenic!</p>";
			
			this.hint = "<p>-Remember that we want GVP expression to be inducible in the presence " +
			"of high concentrations of arsenic. Our ArsR protein is associated with high concentrations " +
			"of this arsenic because it sequesters arsenic, what promoter is responsive to it?<br />" +
			"Remember that we are building a transcriptional unit in order for our device to function; " +
			"this means a part to allow transcription of our coding sequence, the coding sequence itself " +
			"which is followed by a terminator to prevent further transcription beyond the coding sequence.</p>";
			
			this.availableComponents = new Array("0.1", "0.2", "0.3", "0.4", "0.5", "1.0", "1.1", "1.2", "2.0", "2.1", "2.2", "2.3",
			"4.0", "4.1", "4.2", "5.0", "5.1", "5.2", "6.0", "7.0", "7.1", "7.2");
			
			this.componentCategories = new Array("0","1","2","4","5","6","7");
			this.winningSequence = new Array("2.3", "0.5", "6.0");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(2);
			runIntro(levelName, scenario);
			
			componentOrder = new Array(0,1,2,3,4,5,6,7);
			preExistingComponents = new Array();
			minComponent = 0;
			maxComponent = 8;
		}
	}
}