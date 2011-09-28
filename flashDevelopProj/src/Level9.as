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
	
	public class Level9 extends Level
	{
		public function Level9()
		{
			this.currentLevel = "Level9";
			this.levelName = "<p>Level 9</p>";
			this.nextLevel = "Level10";
			
			var scenario:String = "<p>The next step is to block the export of arsenic from E.C. " +
			"An endogenous gene called ArsB is actively exporting arsenic back out of our bacterial " +
			"friend’s membrane! ArsR, also endogenously expressed will repress ArsB and sequester " +
			"arsenic. To maintain a higher level of arsenic within the cell rather than out, ArsR " +
			"will have to be more highly expressed than ArsB. However, ArsR will become toxic if too  " +
			"highly expressed. Build a device that expresses additional ArsR.</p>";
			
			this.levelEndText = "<p>Excellent! Now we have enabled E.C. to effectively prevent " +
			"arsenic from being exported out of the cell.</p>";
			
			this.hint = "<p>-Remember that E.C. can’t produce too much ArsR because conditions " +
			"will become toxic and it also can’t produce too little ArsR otherwise it will be " +
			"out competed by ArsB.</p>";
			
			this.availableComponents = new Array("0.13", "0.4", "0.14", "1.0", "1.1", "1.2", "2.4", "2.1", "2.2", 
			"4.0", "4.1", "4.2", "5.0", "5.1", "5.2", "6.0", "7.0", "7.1", "7.2");
			
			this.componentCategories = new Array("0","1","2","4","5","7");
			this.winningSequence = new Array("2.4", "0.3","2.1", "0.4");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(2);
			runIntro(levelName, scenario);
			
			componentOrder = new Array(0,1,3,4);
			preExistingComponents = new Array(2,"ADH1",0,"GLpF");
			minComponent = 2;
			maxComponent = 4;
		}
	}
}