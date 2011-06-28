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
		[Embed(source='../lib/darken.png')]
		private var darkenClass:Class;
		private var darken:Bitmap = new darkenClass();
		
		// Embed interface images
		
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
		
		// All buttons, BtnG = Greyed-out version
		
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
		
		private var introText:TextShadow = new TextShadow("Level");
		
		public function Level() 
		{
			bottomMenu.x = 0;
			bottomMenu.y = 318;
			this.addChild(bottomMenu);
			
			goBtn.y = 213;
			goBtn.x = 415;
			goBtn.addEventListener(MouseEvent.CLICK, goFunction);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
		public function runIntro(title:String, scenario:String):void
		{
			darken.alpha = 0;
			TweenLite.to(darken, 1, { x:0, y:0, alpha:1 } );
			this.addChild(darken);
			hCentre(content);
			content.y = 35;
			this.addChild(content);
			introText.setText(scenario);
			this.addChild(introText);
			this.addChild(goBtn);
		}
		
		private function goFunction(e:MouseEvent):void
		{
			this.removeChild(goBtn);
			this.removeChild(content);
			this.removeChild(introText);
			this.removeChild(darken);
		}
		
		private function removeListeners(e:Event):void 
		{
			goBtn.removeEventListener(MouseEvent.CLICK, goFunction);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removeListeners);
		}
		
	}

}