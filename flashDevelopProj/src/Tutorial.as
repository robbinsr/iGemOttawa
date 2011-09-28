package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.display.Bitmap;
	import flash.display.InteractiveObject;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;

	
	public class Tutorial extends General
	{		
		[Embed(source='../lib/logo.png')]
		private var gameLogoClass:Class;
		private var gameLogo:Bitmap = new gameLogoClass();
		
		private var slide1:String = "<p>Welcome to \"Gears of Evolution,\" a game imagined and created by the iGEM uOttawa team. " +
		"This game aims to provide an interactive, educational medium for those interested in augmenting their knowledge of the" +
		" basic principles of Synthetic Biology. The iGEM uOttawa team hopes that you would enjoy helping E.C. past his adversaries" +
		" and we would welcome all your feedback. Thank you for playing \"Gears of Evolution.\"</p>";
		
		private var slide2:String = "<p>E.C. is a generic laboratory strain E. coli individual who has been unfortunate enough " + 
		"to be picked by the mad scientist, Dr. Power. In addition to his propensity to oppress helpless bacteria, Dr. Power " +
		"wants to observe how E.C. would deal with various conditions, most of which are characterized by a form of environmental " +
		"stress. It is your task to help E.C. to survive and prosper despite Dr. Power’s evil schemes.</p>";
		
		private var slide3:String = "<p>In order for E.C. to survive, we will first need to provide him with a circular piece of " +
		"DNA that can replicate independently of his chromosomal DNA called a plasmid. This plasmid will be a way of introducing " +
		"E.C. to foreign genetic material that will aid him in his survival. Specifically, we will be inserting special pieces of " + 
		"DNA called BioBricks into this plasmid.</p>";
		
		private var slide4:String = "<p>BioBricks are fragments of DNA with a predefined function that are standardized in such a " + 
		"way that they can be connected to one another in their construction. However, only certain combinations of BioBricks " +
		"constructed in tandem will end up being functional and will produce a desired function. When we construct a viable " +
		"combination of these BioBricks in tandem, we call this a device.</p>";
		
		private var slide5:String = "<p>These BioBricks will have many different functions and within the context of this game " +
		"we will classify them into 7 different categories: antibiotic resistance genes, promoters, coding " +
		"sequences, operators, repressors and activators. If you wish to assist E.C. you will have to build viable devices out " + 
		"of these BioBricks in order to foil Dr. Power’s plans of bacterial oppression.</p>";
		
		private var tutorialText:TextShadow = new TextShadow(slide1,126,97,350,110,0);
		
		private static var slideState:int = 1;
		
		public function Tutorial() 
		{	
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			gameLogo.x = 127;
			gameLogo.y = 60;
			this.addChild(gameLogo);

			this.addChild(tutorialText);
			
			nextBtn.y = 213;
			nextBtn.x = 345;
			nextBtn.addEventListener(MouseEvent.CLICK, nextFunction);
			this.addChild(nextBtn);
			
			skipBtn.y = 213;
			skipBtn.x = 415;
			skipBtn.addEventListener(MouseEvent.CLICK, skipFunction);
			this.addChild(skipBtn);
			
			goBtn.y = 213;
			goBtn.x = 415;
			goBtn.addEventListener(MouseEvent.CLICK, skipFunction);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		private function nextFunction(e:MouseEvent):void
		{
			if (slideState < 5) 
			{
				slideState += 1;
				tutorialText.setText(this["slide" + slideState]);
				
				if (slideState == 5) {
					this.removeChild(skipBtn);
					this.removeChild(nextBtn);
					this.addChild(goBtn);
				}
			}
		}
		
		private function skipFunction(e:MouseEvent):void
		{
			Main.screens.switchTo("Level1");
		}
		
		private function removeListeners(e:Event):void 
		{
			nextBtn.removeEventListener(MouseEvent.CLICK, nextFunction);
			skipBtn.removeEventListener(MouseEvent.CLICK, skipFunction);
			goBtn.removeEventListener(MouseEvent.CLICK, skipFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
	}

}