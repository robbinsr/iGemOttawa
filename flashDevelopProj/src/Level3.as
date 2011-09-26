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
			this.currentLevel = "Level3";
			this.levelName = "<p>Level 3</p>";
			this.nextLevel = "Level4";
			
			var scenario:String = "<p>There is usually more than one transcriptional unit on a plasmid. " +
			"Each of these transcriptional units contains its own promoter, coding sequence, and " +
			"terminator. In order to study E.C.’s ability to adapt to various metabolic conditions, Dr. " +
			"Power has exhausted all the energy sources in E.C.’s medium except for lactose. Since E.C.’s " +
			"intrinsic lactose processing machinery is deficient, you need to help him out. -galactosidase " +
			"codes for a protein that breaks lactose down into useful subunits. Choose the right coding " +
			"sequence so that E.C. can digest lactose and survive.</p>";
			
			this.levelEndText = "<p>Well done! E.C. will live for one more day!</p>";
			
			this.hint = "<p>E.C. needs to bread lactose down into useful subunits that it can use for energy. " +
			"You need the correct protein, coded by the correct gene, to accomplish this.</p>";
			
			this.availableComponents = new Array("0.0", "0.1", "0.2");
			
			this.componentCategories = new Array("0");
			this.winningSequence = new Array("2.2","0.0");
			
			Main.backgroundImage.changeBackground(4);
			plasmid.changePlasmid(4);
			runIntro(levelName, scenario);
			
			componentOrder = new Array(0,1,2,3,4,5,6,7);
			preExistingComponents = new Array(2,"MYO2");
			minComponent = 1;
			maxComponent = 8;
		}
	}
}