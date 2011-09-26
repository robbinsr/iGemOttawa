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
	
	public class Level7 extends Level
	{
		public function Level7()
		{
			this.currentLevel = "Level7";
			this.levelName = "<p>Level 7</p>";
			this.nextLevel = "Level8";
			
			var scenario:String = "<p>E.C. has noticed that E.C.’ produces a peculiar compound, called " +
			"IPTG. IPTG structurally resembles allolactose which binds lacI repressor and changes its 3 " +
			"dimensional shape in such a way that it can no more attach to its respective operator. " +
			"Knowing that you added lacI to E.C. previously, devise a way so that E.C. only expresses the " +
			"blue colour when E.C.’ is in the vicinity. This way, not only E.C. keeps his companion, he " +
			"can save his energy by ceasing the production of BFP when its presence is not needed.</p>";
			
			this.levelEndText = "<p>Great! You’ve made E.C. the luckiest bacteria alive.</p>";
			
			this.hint = "<p>You have to match the right repressor to the correct operator. Also, you " +
			"want to make sure that when IPTG is present E.C. glows brightly!</p>";
			
			this.availableComponents = new Array("0.7", "0.9", "0.10", "1.0", "1.1", "1.2", "2.0", "2.1", "2.2", "4.0", "4.1", "4.2");
			
			this.componentCategories = new Array("0", "1","2","4");
			this.winningSequence = new Array("2.0", "0.1", "1.2", "4.0");
			
			Main.backgroundImage.changeBackground(3);
			plasmid.changePlasmid(2);
			runIntro(levelName, scenario);
			
			componentOrder = new Array(0,1,7,3);
			preExistingComponents = new Array(2,"TDH3",0,"BFP");
			minComponent = 2;
			maxComponent = 4;
		}
	}
}