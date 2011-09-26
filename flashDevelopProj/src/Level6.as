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
	
	public class Level6 extends Level
	{
		public function Level6()
		{
			this.currentLevel = "Level6";
			this.levelName = "<p>Level 6</p>";
			this.nextLevel = "Level7";
			
			var scenario:String = "<p>Although bacteria usually do not mate, E.C. has a weak heart and " +
			"easily falls for other bacteria around. Recently, E.C.’ has found her way into the media. " +
			"Interestingly, E.C.’ is fond of the colour blue. Luckily, some proteins emit at certain " +
			"wavelengths when they are excited with higher energy light waves. Choose the correct gene " +
			"that would make E.C. glow a shiny blue and allure E.C.’ to him.</p>";
			
			this.levelEndText = "<p>Fantastic; you have given E.C. the gift of companionship!</p>";
			
			this.hint = "<p>-Remember that we always need a promoter in front of a gene and in this case " +
			"it has to produce a lot of the protein to make E.C. shine. <br />" +
			"-Also ensure that you have used the right colour to interest E.C.</p>";
			
			this.availableComponents = new Array("0.6", "0.7", "0.8", "2.0", "2.1", "2.2");
			
			this.componentCategories = new Array("2","0");
			this.winningSequence = new Array("2.0", "0.7");
			
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