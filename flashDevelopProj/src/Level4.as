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
	
	public class Level4 extends Level
	{
		public function Level4()
		{
			this.currentLevel = "Level4";
			this.levelName = "<p>Level 4</p>";
			this.nextLevel = "Level5";
			
			var scenario:String = "<p>Bacteria, and other organism, regulate the expression of various " +
			"genes using various strategies. One of the most prevalent regulatory classes of proteins is " +
			"the class of repressors. Repressors bind to short DNA sequences called operators. In fact, " +
			"an operator is a part of the promoter for the gene and it may bind repressors and/or activators. " +
			"At this point, Dr. Power has added some more glucose to E.C.’s medium. It is more energy " +
			"consuming to digest lactose than glucose. However, it is useful to keep the -galactosidase gene " +
			"around in case it is needed again. Therefore, to control its expression, and conserve E.C.’s " +
			"energy, you can add an operator and its corresponding repressor. Keep in mind that when lactose " +
			"is present it will bind to the lacI repressor and allow the expression of the gene that it regulates.</p>";
			
			this.levelEndText = "<p>Great! Now E.C. can conserve energy by using glucose while keeping its options open.</p>";
			
			this.hint = "<p>Keep in mind that each repressor has a specific binding sequence, i.e. operator, to " +
			"itself. You have to match the correct repressor to its corresponding operator.</p>";
			
			this.availableComponents = new Array("1.0", "1.1", "1.2", "4.0", "4.1", "4.2");
			
			this.componentCategories = new Array("1","4");
			this.winningSequence = new Array("2.2","0.0","1.2","4.0");
			
			Main.backgroundImage.changeBackground(1);
			plasmid.changePlasmid(1);
			runIntro(levelName, scenario);
			
			componentOrder = new Array(0,1,7,3);
			preExistingComponents = new Array(2,"MYO2",0,"-galactosidase");
			minComponent = 2;
			maxComponent = 4;
		}
	}
}