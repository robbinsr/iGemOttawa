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
		
		[Embed(source='../lib/levelInterface/codingseq.png')]
		private var codingseqBtnClass:Class;
		private var codingseqBtnImg:Bitmap = new codingseqBtnClass();
		
		[Embed(source='../lib/levelInterface/codingseq_h.png')]
		private var codingseqBtnHClass:Class;
		private var codingseqBtnHImg:Bitmap = new codingseqBtnHClass();
		
		[Embed(source='../lib/levelInterface/codingseq_g.png')]
		private var codingseqBtnGClass:Class;
		private var codingseqBtnGImg:Bitmap = new codingseqBtnGClass();
		
		[Embed(source='../lib/levelInterface/operator.png')]
		private var operatorBtnClass:Class;
		private var operatorBtnImg:Bitmap = new operatorBtnClass();
		
		[Embed(source='../lib/levelInterface/operator_h.png')]
		private var operatorBtnHClass:Class;
		private var operatorBtnHImg:Bitmap = new operatorBtnHClass();
		
		[Embed(source='../lib/levelInterface/operator_g.png')]
		private var operatorBtnGClass:Class;
		private var operatorBtnGImg:Bitmap = new operatorBtnGClass();
		
		[Embed(source='../lib/levelInterface/promoter.png')]
		private var promoterBtnClass:Class;
		private var promoterBtnImg:Bitmap = new promoterBtnClass();
		
		[Embed(source='../lib/levelInterface/promoter_h.png')]
		private var promoterBtnHClass:Class;
		private var promoterBtnHImg:Bitmap = new promoterBtnHClass();
		
		[Embed(source='../lib/levelInterface/promoter_g.png')]
		private var promoterBtnGClass:Class;
		private var promoterBtnGImg:Bitmap = new promoterBtnGClass();
		
		[Embed(source='../lib/levelInterface/reporter.png')]
		private var reporterBtnClass:Class;
		private var reporterBtnImg:Bitmap = new reporterBtnClass();
		
		[Embed(source='../lib/levelInterface/reporter_h.png')]
		private var reporterBtnHClass:Class;
		private var reporterBtnHImg:Bitmap = new reporterBtnHClass();
		
		[Embed(source='../lib/levelInterface/reporter_g.png')]
		private var reporterBtnGClass:Class;
		private var reporterBtnGImg:Bitmap = new reporterBtnGClass();
		
		[Embed(source='../lib/levelInterface/repressor.png')]
		private var repressorBtnClass:Class;
		private var repressorBtnImg:Bitmap = new repressorBtnClass();
		
		[Embed(source='../lib/levelInterface/repressor_h.png')]
		private var repressorBtnHClass:Class;
		private var repressorBtnHImg:Bitmap = new repressorBtnHClass();
		
		[Embed(source='../lib/levelInterface/repressor_g.png')]
		private var repressorBtnGClass:Class;
		private var repressorBtnGImg:Bitmap = new repressorBtnGClass();
		
		[Embed(source='../lib/levelInterface/resgenes.png')]
		private var resgenesBtnClass:Class;
		private var resgenesBtnImg:Bitmap = new resgenesBtnClass();
		
		[Embed(source='../lib/levelInterface/resgenes_h.png')]
		private var resgenesBtnHClass:Class;
		private var resgenesBtnHImg:Bitmap = new resgenesBtnHClass();
		
		[Embed(source='../lib/levelInterface/resgenes_g.png')]
		private var resgenesBtnGClass:Class;
		private var resgenesBtnGImg:Bitmap = new resgenesBtnGClass();
		
		[Embed(source='../lib/levelInterface/terminator.png')]
		private var terminatorBtnClass:Class;
		private var terminatorBtnImg:Bitmap = new terminatorBtnClass();
		
		[Embed(source='../lib/levelInterface/terminator_h.png')]
		private var terminatorBtnHClass:Class;
		private var terminatorBtnHImg:Bitmap = new terminatorBtnHClass();
		
		[Embed(source='../lib/levelInterface/terminator_g.png')]
		private var terminatorBtnGClass:Class;
		private var terminatorBtnGImg:Bitmap = new terminatorBtnGClass();
		
		[Embed(source='../lib/levelInterface/activator.png')]
		private var activatorBtnClass:Class;
		private var activatorBtnImg:Bitmap = new activatorBtnClass();
		
		[Embed(source='../lib/levelInterface/activator_h.png')]
		private var activatorBtnHClass:Class;
		private var activatorBtnHImg:Bitmap = new activatorBtnHClass();
		
		[Embed(source='../lib/levelInterface/activator_g.png')]
		private var activatorBtnGClass:Class;
		private var activatorBtnGImg:Bitmap = new activatorBtnGClass();
		
		// Simple Buttons, including Greyed versions
		
		private var codingseqBtn:SimpleButton = new SimpleButton(
		codingseqBtnImg, codingseqBtnHImg, codingseqBtnHImg, codingseqBtnImg);
		
		private var codingseqBtnG:SimpleButton = new SimpleButton(
		codingseqBtnGImg, codingseqBtnGImg, codingseqBtnGImg, codingseqBtnGImg);
		
		private var operatorBtn:SimpleButton = new SimpleButton(
		operatorBtnImg, operatorBtnHImg, operatorBtnHImg, operatorBtnImg);
		
		private var operatorBtnG:SimpleButton = new SimpleButton(
		operatorBtnGImg, operatorBtnGImg, operatorBtnGImg, operatorBtnGImg);
		
		private var promoterBtn:SimpleButton = new SimpleButton(
		promoterBtnImg, promoterBtnHImg, promoterBtnHImg, promoterBtnImg);
		
		private var promoterBtnG:SimpleButton = new SimpleButton(
		promoterBtnGImg, promoterBtnGImg, promoterBtnGImg, promoterBtnGImg);
		
		private var reporterBtn:SimpleButton = new SimpleButton(
		reporterBtnImg, reporterBtnHImg, reporterBtnHImg, reporterBtnImg);
		
		private var reporterBtnG:SimpleButton = new SimpleButton(
		reporterBtnGImg, reporterBtnGImg, reporterBtnGImg, reporterBtnGImg);
		
		private var repressorBtn:SimpleButton = new SimpleButton(
		repressorBtnImg, repressorBtnHImg, repressorBtnHImg, repressorBtnImg);
		
		private var repressorBtnG:SimpleButton = new SimpleButton(
		repressorBtnGImg, repressorBtnGImg, repressorBtnGImg, repressorBtnGImg);
		
		private var resgenesBtn:SimpleButton = new SimpleButton(
		resgenesBtnImg, resgenesBtnHImg, resgenesBtnHImg, resgenesBtnImg);
		
		private var resgenesBtnG:SimpleButton = new SimpleButton(
		resgenesBtnGImg, resgenesBtnGImg, resgenesBtnGImg, resgenesBtnGImg);
		
		private var terminatorBtn:SimpleButton = new SimpleButton(
		terminatorBtnImg, terminatorBtnHImg, terminatorBtnHImg, terminatorBtnImg);
		
		private var terminatorBtnG:SimpleButton = new SimpleButton(
		terminatorBtnGImg, terminatorBtnGImg, terminatorBtnGImg, terminatorBtnGImg);
		
		private var activatorBtn:SimpleButton = new SimpleButton(
		activatorBtnImg, activatorBtnHImg, activatorBtnHImg, activatorBtnImg);
		
		private var activatorBtnG:SimpleButton = new SimpleButton(
		activatorBtnGImg, activatorBtnGImg, activatorBtnGImg, activatorBtnGImg);
		
		// Other variables
		
		protected var introText:TextShadow = new TextShadow("Intro", 126, 97, 350, 110, 0);
		protected var outroText:TextShadow = new TextShadow("Outro", 126, 97, 350, 110, 0);
		protected var errorText:TextShadow = new TextShadow("Error", 126, 97, 350, 110, 0);
		
		protected var levelEndText:String = "";
		protected var hint:String = "";
		protected var levelName:String = "";
		protected var nextLevel:String = "";
		
		public static var plasmid:Plasmid = new Plasmid();
		
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
			
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			introText.setText(scenario);
			this.addChild(introText);
			
			goBtn.y = 213;
			goBtn.x = 415;
			this.addChild(goBtn);
			goBtn.addEventListener(MouseEvent.CLICK, goFunction);
		}

		protected function runIntroSlowDarken (title:String, scenario:String):void
		{
			darken.alpha = 0;
			this.addChild(darken);
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			
			introText.setText(scenario);
			this.addChild(introText);
			
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
			this.removeChild(introText);
			this.removeChild(darken);
			
			plasmid.name = "plasmid";
			plasmid.alpha = 1;
			plasmid.x = 0;
			plasmid.y = 0;

			this.addChild(plasmid);
			
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
				this[buttonName].y = 360;
				this[buttonName].alpha = 0;
				this[buttonName].name = categoryId;
				this[buttonName].addEventListener(MouseEvent.CLICK, popupMenuFunction);
				this.addChild(this[buttonName]);
				TweenLite.to(this[buttonName], 1, { delay:i, alpha:1 } );
			}
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
			if (getSequenceLength() > winningSequence.length) {
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
		
		// Undo button functions
		
		private function undoFunction(e:MouseEvent):void
		{
			var arrowNum:int = getSequenceLength();
			
			if (arrowNum > 0) {
				removeComponent();
			}
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
		
		protected var componentCategories:Array;
		
		protected var winningSequence:Array;
			
		public static var currentSequence:Array = new Array();
		
		protected var availableComponents:Array;
		
		public static function addComponent(currentCategory:int,buttonName:String):void
		{
			if ( currentSequence.length < 8) {
				var id:String = components.getComponentId(currentCategory, buttonName);
				var color:uint = components.componentColors[currentCategory]
				
				currentSequence.push(id);
				plasmid.addArrow(color);
			}
		}
		
		public static function removeComponent():void
		{	
			currentSequence.pop();
			plasmid.removeArrow();
		}
		
		public static function getSequenceLength():int
		{	
			return currentSequence.length;
		}
		
		public static function resetSequence():void
		{	
			currentSequence = [];
			plasmid.resetArrows();
		}

	}
}