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
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;
	
	public class Level extends General
	{
		// General Bitmaps
		
		[Embed(source='../lib/darken.png')]
		private var darkenClass:Class;
		private var darken:Bitmap = new darkenClass();
		
		// Bottom Menu Button Bitmaps
		
		[Embed(source='../lib/bottommenu.png')]
		private var bottomMenuClass:Class;
		private var bottomMenu:Bitmap = new bottomMenuClass();
		
		[Embed(source='../lib/levelInterface2/codingseq.png')]
		private var codingseqBtnClass:Class;
		private var codingseqBtnImg:Bitmap = new codingseqBtnClass();
		
		[Embed(source='../lib/levelInterface2/codingseq_h.png')]
		private var codingseqBtnHClass:Class;
		private var codingseqBtnHImg:Bitmap = new codingseqBtnHClass();
		
		[Embed(source='../lib/levelInterface2/operator.png')]
		private var operatorBtnClass:Class;
		private var operatorBtnImg:Bitmap = new operatorBtnClass();
		
		[Embed(source='../lib/levelInterface2/operator_h.png')]
		private var operatorBtnHClass:Class;
		private var operatorBtnHImg:Bitmap = new operatorBtnHClass();
		
		[Embed(source='../lib/levelInterface2/promoter.png')]
		private var promoterBtnClass:Class;
		private var promoterBtnImg:Bitmap = new promoterBtnClass();
		
		[Embed(source='../lib/levelInterface2/promoter_h.png')]
		private var promoterBtnHClass:Class;
		private var promoterBtnHImg:Bitmap = new promoterBtnHClass();
		
		[Embed(source='../lib/levelInterface2/repressor.png')]
		private var repressorBtnClass:Class;
		private var repressorBtnImg:Bitmap = new repressorBtnClass();
		
		[Embed(source='../lib/levelInterface2/repressor_h.png')]
		private var repressorBtnHClass:Class;
		private var repressorBtnHImg:Bitmap = new repressorBtnHClass();
		
		[Embed(source='../lib/levelInterface2/resgenes.png')]
		private var resgenesBtnClass:Class;
		private var resgenesBtnImg:Bitmap = new resgenesBtnClass();
		
		[Embed(source='../lib/levelInterface2/resgenes_h.png')]
		private var resgenesBtnHClass:Class;
		private var resgenesBtnHImg:Bitmap = new resgenesBtnHClass();
		
		[Embed(source='../lib/levelInterface2/activator.png')]
		private var activatorBtnClass:Class;
		private var activatorBtnImg:Bitmap = new activatorBtnClass();
		
		[Embed(source='../lib/levelInterface2/activator_h.png')]
		private var activatorBtnHClass:Class;
		private var activatorBtnHImg:Bitmap = new activatorBtnHClass();
		
		// Simple Buttons, including Greyed versions
		
		private var codingseqBtn:SimpleButton = new SimpleButton(
		codingseqBtnImg, codingseqBtnHImg, codingseqBtnHImg, codingseqBtnImg);
		
		private var operatorBtn:SimpleButton = new SimpleButton(
		operatorBtnImg, operatorBtnHImg, operatorBtnHImg, operatorBtnImg);
		
		private var promoterBtn:SimpleButton = new SimpleButton(
		promoterBtnImg, promoterBtnHImg, promoterBtnHImg, promoterBtnImg);
		
		private var repressorBtn:SimpleButton = new SimpleButton(
		repressorBtnImg, repressorBtnHImg, repressorBtnHImg, repressorBtnImg);
		
		private var resgenesBtn:SimpleButton = new SimpleButton(
		resgenesBtnImg, resgenesBtnHImg, resgenesBtnHImg, resgenesBtnImg);
		
		private var activatorBtn:SimpleButton = new SimpleButton(
		activatorBtnImg, activatorBtnHImg, activatorBtnHImg, activatorBtnImg);
		
		// Other variables
		
		protected var introTitleText:TextShadow = new TextShadow("Level", 126, 60, 350, 110, 2);
		protected var introText:TextShadow = new TextShadow("Intro", 126, 97, 350, 110, 0);
		protected var introText2:TextShadow = new TextShadow("Intro", 126, 97, 350, 110, 0);
		protected var outroText:TextShadow = new TextShadow("Outro", 126, 97, 350, 110, 0);
		protected var errorText:TextShadow = new TextShadow("Error", 126, 97, 350, 110, 0);
		
		protected var levelEndText:String = "";
		protected var hint:String = "";
		protected var currentLevel:String = "";
		protected var levelName:String = "";
		protected var nextLevel:String = "";
		protected var hasSlides:Boolean = false;
		
		public static var plasmid:Plasmid;
		
		// Intro sequence functions

		public function Level() 
		{
			bottomMenu.x = 0;
			bottomMenu.y = 348;
			this.addChild(bottomMenu);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);	
		}
		
		protected function runIntro(title:String, scenario:String):void
		{	
			this.addChild(darken);
			
			runIntroGeneral();
			
			introTitleText.setText(title);
			this.addChild(introTitleText);
			
			introText.setText(scenario);
			this.addChild(introText);
		}
		
		protected function runIntroWithSlides(title:String, scenario:String, scenario2:String):void
		{	
			this.addChild(darken);
			
			runIntroGeneral();
			
			introTitleText.setText(title);
			this.addChild(introTitleText);
			
			introText.setText(scenario);
			introText2.setText(scenario2);
			this.addChild(introText);
			
			nextBtn.y = 213;
			nextBtn.x = 345;
			nextBtn.addEventListener(MouseEvent.CLICK, nextFunction);
			this.addChild(nextBtn);
		}

		protected function runIntroSlowDarken (title:String, scenario:String):void
		{
			darken.alpha = 0;
			this.addChild(darken);
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			
			runIntroGeneral();
			
			introTitleText.setText(title);
			this.addChild(introTitleText);
			
			introText.setText(scenario);
			this.addChild(introText);
		}

		protected function runIntroGeneral():void
		{				
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			goBtn.y = 213;
			goBtn.x = 415;
			this.addChild(goBtn);
			goBtn.addEventListener(MouseEvent.CLICK, goFunction);
		}
		
		private function goFunction(e:MouseEvent):void
		{
			goBtn.removeEventListener(MouseEvent.CLICK, goFunction);
			this.removeChild(goBtn);
			this.removeChild(content);
			
			if(hasSlides)
				this.removeChild(introText2);
			else
				this.removeChild(introText);
				
			this.removeChild(introTitleText);
			this.removeChild(darken);
			
			plasmid = new Plasmid(minComponent, maxComponent, componentOrder);
			plasmid.name = "plasmid";
			plasmid.alpha = 1;
			plasmid.x = 0;
			plasmid.y = 0;
			this.addChild(plasmid);
			for (var ii:int = 0; ii < preExistingComponents.length;) {
				addComponent(preExistingComponents[ii++],preExistingComponents[ii++]);
			}
			
			
			createBtn.y = 20;
			createBtn.x = 530;
			createBtn.addEventListener(MouseEvent.CLICK, createFunction);
			this.addChild(createBtn);
			TweenLite.to(createBtn, 1, { delay:1, alpha:1 } );
			
			undoBtn.y = 20;
			undoBtn.x = 460;
			undoBtn.addEventListener(MouseEvent.CLICK, undoFunction);
			this.addChild(undoBtn);
			TweenLite.to(undoBtn, 1, { delay:1, alpha:1 } );
			
			clearBtn.y = 20;
			clearBtn.x = 390;
			clearBtn.addEventListener(MouseEvent.CLICK, clearFunction);
			this.addChild(clearBtn);
			TweenLite.to(clearBtn, 1, { delay:1, alpha:1 } );
			
			infoBtn.y = 20;
			infoBtn.x = 320;
			infoBtn.addEventListener(MouseEvent.CLICK, infoFunction);
			this.addChild(infoBtn);
			TweenLite.to(infoBtn, 1, { delay:1, alpha:1 } );
			
			var categoryId:int;
			var buttonName:String;
			trace(this.componentCategories.length);
			for (var i:int = 0; i < this.componentCategories.length; i++) {
				categoryId = this.componentCategories[i];
				switch(categoryId)
				{
					case(0):
						buttonName = "codingseqBtn";
						break;
					case(1):
						buttonName = "operatorBtn";
						break;
					case(2):
						buttonName = "promoterBtn";
						break;
					case(3):
						buttonName = "reporterBtn";
						break;
					case(4):
						buttonName = "repressorBtn";
						break;
					case(5):
						buttonName = "resgenesBtn";
						break;
					case(6):
						buttonName = "terminatorBtn";
						break;
					case(7):
						buttonName = "activatorBtn";
						break;
				}
				this[buttonName].x = 85 * int(i) + 10;
				this[buttonName].y = 310;
				this[buttonName].alpha = 0;
				this[buttonName].name = categoryId;
				this[buttonName].addEventListener(MouseEvent.CLICK, popupMenuFunction);
				this.addChild(this[buttonName]);
				TweenLite.to(this[buttonName], 1, { delay:i, alpha:1 } );
			}
		}
		
		private function nextFunction(e:MouseEvent):void
		{
			this.removeChild(nextBtn);
			this.removeChild(introText);
			this.addChild(introText2);
		}
		
		// Create button functions
		
		private function createFunction(e:MouseEvent):void
		{
			if (checkWinConditions()) {
				runOutro(levelEndText);
			}
			else {
				runError(hint);
			}
		}
		
		private function checkWinConditions():Boolean
		{	
			if (currentSequence.length != winningSequence.length) {
				return false;
			}
			for (var i:int = 0; i < winningSequence.length; i++ ) {
				if (currentSequence[i] != winningSequence[i]) {
					return false;
				}
			}
			return true;
		}
		
		// On success
		
		private function runOutro(levelEndText:String):void
		{
			darken.alpha = 0;
			this.addChild(darken);
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			introTitleText.setText(this.levelName);
			this.addChild(introTitleText);
			
			outroText.setText(levelEndText);
			this.addChild(outroText);
			
			this.addChild(goBtn);
			goBtn.addEventListener(MouseEvent.CLICK, goToNextLevel);
		}
		
		private function goToNextLevel(e:MouseEvent):void
		{
			resetSequence();
			Main.screens.switchTo(nextLevel);
		}
		
		private function removeListeners(e:Event):void 
		{
			goBtn.removeEventListener(MouseEvent.CLICK, goToNextLevel);
			createBtn.removeEventListener(MouseEvent.CLICK, createFunction);
			undoBtn.removeEventListener(MouseEvent.CLICK, undoFunction);
			infoBtn.removeEventListener(MouseEvent.CLICK, infoFunction);
			clearBtn.removeEventListener(MouseEvent.CLICK, clearFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		// On failure
		
		private function runError(hint:String):void
		{
			darken.alpha = 0;
			this.addChild(darken);
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			errorText.setText(hint);
			if (currentSequence.length > winningSequence.length) {
				errorText.setText("<p>You've added too many parts to the plasmid!</p>");
			}
			this.addChild(errorText);
			
			this.addChild(goBtn);
			goBtn.addEventListener(MouseEvent.CLICK, closeErrorMessage);
		}
		
		private function closeErrorMessage(e:MouseEvent):void
		{
			this.removeChild(darken);
			this.removeChild(content);
			this.removeChild(errorText);
			goBtn.removeEventListener(MouseEvent.CLICK, closeErrorMessage);
			this.removeChild(goBtn);
		}
		
		private function undoFunction(e:MouseEvent):void
		{
			if ( plasmid.canRemove() ) {
				currentSequence.pop();
				plasmid.removeArrow();
			}
		}
		
		private function clearFunction(e:MouseEvent):void
		{
			for ( var i:int = 0; i < 14; i++) {
				if ( plasmid.canRemove() ) {
					currentSequence.pop();
					plasmid.removeArrow();
				}
			}
		}
		
		private function infoFunction(e:MouseEvent):void
		{
			resetSequence();
			Main.screens.switchTo(currentLevel);
		}
		
		// Popup Menu	
		private var popupMenu:PopupMenu = new PopupMenu();
		
		private function popupMenuFunction(e:MouseEvent):void
		{
			this.popupMenu.populate(components.getComponentButtonArray(e.target.name,this.availableComponents),e.target.name);
			if (this.getChildByName("PopupMenu") == null) {
				this.addChild(popupMenu);
			}
		}
		
		// Working with components
		
		public static var components:Components = new Components();
		
		protected var componentOrder:Array;
		
		protected var preExistingComponents:Array;
		
		protected var minComponent:int;
		
		protected var maxComponent:int;
		
		protected var componentCategories:Array;
		
		protected var winningSequence:Array;
		
		protected var availableComponents:Array;
		
		public static var currentSequence:Array = new Array();
		
		public static function addComponent(currentCategory:int,buttonName:String):void
		{
			if ( plasmid.canAdd() ) {			
				var id:String = components.getComponentId(currentCategory, buttonName);
				var color:uint = components.componentColors[currentCategory];
				var colorH:uint = components.componentHColors[currentCategory];
				
				currentSequence.push(id);
				plasmid.addArrow(color,colorH,buttonName);	
			}
		}
		
		public static function resetSequence():void
		{	
			currentSequence = [];
			plasmid.resetArrows();
		}
	}
}