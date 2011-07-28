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
	import com.greensock.*;
	import com.greensock.easing.*;
	
	public class Level extends General
	{
		// General Bitmaps
		
		[Embed(source='../lib/bacteria1.png')]
		private var bacteriaClass:Class;
		private var bacteria:Bitmap = new bacteriaClass();
		
		[Embed(source='../lib/darken.png')]
		private var darkenClass:Class;
		private var darken:Bitmap = new darkenClass();
		
		// Bottom Menu Button Bitmaps
		
		[Embed(source='../lib/bottommenu.png')]
		private var bottomMenuClass:Class;
		private var bottomMenu:Bitmap = new bottomMenuClass();
		
		[Embed(source='../lib/levelInterface/codingseq.png')]
		public var codingseqBtnClass:Class;
		public var codingseqBtnImg:Bitmap = new codingseqBtnClass();
		
		[Embed(source='../lib/levelInterface/codingseq_h.png')]
		public var codingseqBtnHClass:Class;
		public var codingseqBtnHImg:Bitmap = new codingseqBtnHClass();
		
		[Embed(source='../lib/levelInterface/codingseq_g.png')]
		public var codingseqBtnGClass:Class;
		public var codingseqBtnGImg:Bitmap = new codingseqBtnGClass();
		
		[Embed(source='../lib/levelInterface/operator.png')]
		public var operatorBtnClass:Class;
		public var operatorBtnImg:Bitmap = new operatorBtnClass();
		
		[Embed(source='../lib/levelInterface/operator_h.png')]
		public var operatorBtnHClass:Class;
		public var operatorBtnHImg:Bitmap = new operatorBtnHClass();
		
		[Embed(source='../lib/levelInterface/operator_g.png')]
		public var operatorBtnGClass:Class;
		public var operatorBtnGImg:Bitmap = new operatorBtnGClass();
		
		[Embed(source='../lib/levelInterface/promoter.png')]
		public var promoterBtnClass:Class;
		public var promoterBtnImg:Bitmap = new promoterBtnClass();
		
		[Embed(source='../lib/levelInterface/promoter_h.png')]
		public var promoterBtnHClass:Class;
		public var promoterBtnHImg:Bitmap = new promoterBtnHClass();
		
		[Embed(source='../lib/levelInterface/promoter_g.png')]
		public var promoterBtnGClass:Class;
		public var promoterBtnGImg:Bitmap = new promoterBtnGClass();
		
		[Embed(source='../lib/levelInterface/reporter.png')]
		public var reporterBtnClass:Class;
		public var reporterBtnImg:Bitmap = new reporterBtnClass();
		
		[Embed(source='../lib/levelInterface/reporter_h.png')]
		public var reporterBtnHClass:Class;
		public var reporterBtnHImg:Bitmap = new reporterBtnHClass();
		
		[Embed(source='../lib/levelInterface/reporter_g.png')]
		public var reporterBtnGClass:Class;
		public var reporterBtnGImg:Bitmap = new reporterBtnGClass();
		
		[Embed(source='../lib/levelInterface/repressor.png')]
		public var repressorBtnClass:Class;
		public var repressorBtnImg:Bitmap = new repressorBtnClass();
		
		[Embed(source='../lib/levelInterface/repressor_h.png')]
		public var repressorBtnHClass:Class;
		public var repressorBtnHImg:Bitmap = new repressorBtnHClass();
		
		[Embed(source='../lib/levelInterface/repressor_g.png')]
		public var repressorBtnGClass:Class;
		public var repressorBtnGImg:Bitmap = new repressorBtnGClass();
		
		[Embed(source='../lib/levelInterface/resgenes.png')]
		public var resgenesBtnClass:Class;
		public var resgenesBtnImg:Bitmap = new resgenesBtnClass();
		
		[Embed(source='../lib/levelInterface/resgenes_h.png')]
		public var resgenesBtnHClass:Class;
		public var resgenesBtnHImg:Bitmap = new resgenesBtnHClass();
		
		[Embed(source='../lib/levelInterface/resgenes_g.png')]
		public var resgenesBtnGClass:Class;
		public var resgenesBtnGImg:Bitmap = new resgenesBtnGClass();
		
		[Embed(source='../lib/levelInterface/terminator.png')]
		public var terminatorBtnClass:Class;
		public var terminatorBtnImg:Bitmap = new terminatorBtnClass();
		
		[Embed(source='../lib/levelInterface/terminator_h.png')]
		public var terminatorBtnHClass:Class;
		public var terminatorBtnHImg:Bitmap = new terminatorBtnHClass();
		
		[Embed(source='../lib/levelInterface/terminator_g.png')]
		public var terminatorBtnGClass:Class;
		public var terminatorBtnGImg:Bitmap = new terminatorBtnGClass();
		
		// Simple Buttons, including Greyed versions
		
		public var codingseqBtn:SimpleButton = new SimpleButton(
		codingseqBtnImg, codingseqBtnHImg, codingseqBtnHImg, codingseqBtnImg);
		
		public var codingseqBtnG:SimpleButton = new SimpleButton(
		codingseqBtnGImg, codingseqBtnGImg, codingseqBtnGImg, codingseqBtnGImg);
		
		public var operatorBtn:SimpleButton = new SimpleButton(
		operatorBtnImg, operatorBtnHImg, operatorBtnHImg, operatorBtnImg);
		
		public var operatorBtnG:SimpleButton = new SimpleButton(
		operatorBtnGImg, operatorBtnGImg, operatorBtnGImg, operatorBtnGImg);
		
		public var promoterBtn:SimpleButton = new SimpleButton(
		promoterBtnImg, promoterBtnHImg, promoterBtnHImg, promoterBtnImg);
		
		public var promoterBtnG:SimpleButton = new SimpleButton(
		promoterBtnGImg, promoterBtnGImg, promoterBtnGImg, promoterBtnGImg);
		
		public var reporterBtn:SimpleButton = new SimpleButton(
		reporterBtnImg, reporterBtnHImg, reporterBtnHImg, reporterBtnImg);
		
		public var reporterBtnG:SimpleButton = new SimpleButton(
		reporterBtnGImg, reporterBtnGImg, reporterBtnGImg, reporterBtnGImg);
		
		public var repressorBtn:SimpleButton = new SimpleButton(
		repressorBtnImg, repressorBtnHImg, repressorBtnHImg, repressorBtnImg);
		
		public var repressorBtnG:SimpleButton = new SimpleButton(
		repressorBtnGImg, repressorBtnGImg, repressorBtnGImg, repressorBtnGImg);
		
		public var resgenesBtn:SimpleButton = new SimpleButton(
		resgenesBtnImg, resgenesBtnHImg, resgenesBtnHImg, resgenesBtnImg);
		
		public var resgenesBtnG:SimpleButton = new SimpleButton(
		resgenesBtnGImg, resgenesBtnGImg, resgenesBtnGImg, resgenesBtnGImg);
		
		public var terminatorBtn:SimpleButton = new SimpleButton(
		terminatorBtnImg, terminatorBtnHImg, terminatorBtnHImg, terminatorBtnImg);
		
		public var terminatorBtnG:SimpleButton = new SimpleButton(
		terminatorBtnGImg, terminatorBtnGImg, terminatorBtnGImg, terminatorBtnGImg);
		
		// Other variables
		
		private var introText:TextShadow = new TextShadow("Level", 126, 97, 350, 110, 0);
		private var outroText:TextShadow = new TextShadow("Level", 126, 97, 350, 110, 0);
		public var levelEndText:String = "";
		
		public static var sequenceVector:SequenceVector = new SequenceVector();
		
		// Intro sequence functions
		public function Level() 
		{
			bottomMenu.x = 0;
			bottomMenu.y = 348;
			this.addChild(bottomMenu);
			this.addChild(sequenceVector);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		public function runIntro(title:String, scenario:String):void
		{
			goBtn.y = 213;
			goBtn.x = 415;
			goBtn.addEventListener(MouseEvent.CLICK, goFunction);
			this.addChild(darken);
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			introText.setText(scenario);
			this.addChild(introText);
			this.addChild(goBtn);
		}

		public function runIntroSlowDarken (title:String, scenario:String):void
		{
			goBtn.y = 213;
			goBtn.x = 415;
			goBtn.addEventListener(MouseEvent.CLICK, goFunction);
			darken.alpha = 0;
			this.addChild(darken);
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			introText.setText(scenario);
			this.addChild(introText);
			this.addChild(goBtn);
		}
		
		private function goFunction(e:MouseEvent):void
		{
			goBtn.removeEventListener(MouseEvent.CLICK, goFunction);
			this.removeChild(goBtn);
			this.removeChild(content);
			this.removeChild(introText);
			this.removeChild(darken);
			
			bacteria.alpha = 0;
			bacteria.x = 287;
			bacteria.y = 77;
			this.addChild(bacteria);
			TweenLite.to(bacteria, 1, { delay:i, alpha:1 } );
			
			createBtn.y = 20;
			createBtn.x = 530;
			createBtn.addEventListener(MouseEvent.CLICK, createFunction);
			this.addChild(createBtn);
			TweenLite.to(createBtn, 1, { delay:i, alpha:1 } );
			
			undoBtn.y = 20;
			undoBtn.x = 460;
			undoBtn.addEventListener(MouseEvent.CLICK, undoFunction);
			this.addChild(undoBtn);
			TweenLite.to(undoBtn, 1, { delay:i, alpha:1 } );
			
			var categoryId:int;
			var buttonName:String;
			
			for (var i:String in this.componentCategories) {
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
				}
				this[buttonName].x = 85 * int(i) + 10;
				this[buttonName].y = 360;
				this[buttonName].alpha = 0;
				this[buttonName].name = categoryId;
				this[buttonName].addEventListener(MouseEvent.CLICK, popupMenuFunction);
				this.addChild(this[buttonName]);
				TweenLite.to(this[buttonName], 1, { delay:i, alpha:1 } );
			}
		}
		
		public function runOutro(levelEndText:String):void
		{
			darken.alpha = 0;
			this.addChild(darken);
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			outroText.setText(levelEndText);
			this.addChild(outroText);
			this.addChild(goBtn);
			goBtn.addEventListener(MouseEvent.CLICK, goToNextLevel);
		}
		
		public function createFunction(e:MouseEvent):void
		{
			if (checkWinConditions()) {
				runOutro(levelEndText);
			}
			else {
				
			}
		}
		
		private function undoFunction(e:MouseEvent):void
		{
			var removedId:int = removeComponent();
		}
		
		// Popup Menu events
		
		private function popupMenuFunction(e:MouseEvent):void
		{
			if (this.getChildByName("PopupMenu") != null) {
				this.removeChild (this.getChildByName("PopupMenu"));
			}
			var popup:PopupMenu = new PopupMenu(components.getComponentButtonArray(e.target.name,this.availableComponents),e.target.name);
			popup.currentCategory = e.target.name;
			this.addChild(popup);
		}
		
		private function goToNextLevel(e:MouseEvent):void
		{
			Main.screens.switchTo("Level2");
		}
		
		private function removeListeners(e:Event):void 
		{
			goBtn.removeEventListener(MouseEvent.CLICK, goToNextLevel);
			createBtn.removeEventListener(MouseEvent.CLICK, createFunction);
			undoBtn.removeEventListener(MouseEvent.CLICK, undoFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		// General Logic
		
		public static var components:Components = new Components();
		
		protected var componentCategories:Array;
		
		protected var winningSequence:Array;
			
		public static var currentSequence:Array = new Array();
		
		protected var availableComponents:Array;
		
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
		
		public static function addComponent(id:String, currentCategory:int):void
		{
			//Commented out, since it's incomplete, so you can work on other things without crashing
			//sequenceVector.add(currentCategory);
			currentSequence.push(id);
		}
		
		public static function removeComponent():int
		{	
			//Commented out, since it's incomplete, so you can work on other things without crashing
			//sequenceVector.remove();
			return currentSequence.pop();
		}
	}
}