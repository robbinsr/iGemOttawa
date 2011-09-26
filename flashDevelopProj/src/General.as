package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
		
	// General functions and interface elements
	
	public class General extends MovieClip 
	{
		[Embed(source='../lib/content.png')]
		public var contentClass:Class;
		public var content:Bitmap = new contentClass();
		
		// General Interface Buttons
		
		[Embed(source='../lib/go.png')]
		public var goBtnClass:Class;
		public var goBtnImg:Bitmap = new goBtnClass();
		
		[Embed(source='../lib/go_h.png')]
		public var goBtnHClass:Class;
		public var goBtnHImg:Bitmap = new goBtnHClass();
		
		public var goBtn:SimpleButton = new SimpleButton(
		goBtnImg, goBtnHImg, goBtnHImg, goBtnImg);
		
		[Embed(source='../lib/create.png')]
		public var createBtnClass:Class;
		public var createBtnImg:Bitmap = new createBtnClass();
		
		[Embed(source='../lib/create_h.png')]
		public var createBtnHClass:Class;
		public var createBtnHImg:Bitmap = new createBtnHClass();
		
		public var createBtn:SimpleButton = new SimpleButton(
		createBtnImg, createBtnHImg, createBtnHImg, createBtnImg);
		
		[Embed(source='../lib/undo.png')]
		public var undoBtnClass:Class;
		public var undoBtnImg:Bitmap = new undoBtnClass();
		
		[Embed(source='../lib/undo_h.png')]
		public var undoBtnHClass:Class;
		public var undoBtnHImg:Bitmap = new undoBtnHClass();
		
		public var undoBtn:SimpleButton = new SimpleButton(
		undoBtnImg, undoBtnHImg, undoBtnHImg, undoBtnImg);
		
		[Embed(source='../lib/clear.png')]
		public var clearBtnClass:Class;
		public var clearBtnImg:Bitmap = new clearBtnClass();
		
		[Embed(source='../lib/clear_h.png')]
		public var clearBtnHClass:Class;
		public var clearBtnHImg:Bitmap = new clearBtnHClass();
		
		public var clearBtn:SimpleButton = new SimpleButton(
		clearBtnImg, clearBtnHImg, clearBtnHImg, clearBtnImg);
		
		[Embed(source='../lib/info.png')]
		public var infoBtnClass:Class;
		public var infoBtnImg:Bitmap = new infoBtnClass();
		
		[Embed(source='../lib/info_h.png')]
		public var infoBtnHClass:Class;
		public var infoBtnHImg:Bitmap = new infoBtnHClass();
		
		public var infoBtn:SimpleButton = new SimpleButton(
		infoBtnImg, infoBtnHImg, infoBtnHImg, infoBtnImg);
		
		[Embed(source='../lib/skip.png')]
		public var skipBtnClass:Class;
		public var skipBtnImg:Bitmap = new skipBtnClass();
		
		[Embed(source='../lib/skip_h.png')]
		public var skipBtnHClass:Class;
		public var skipBtnHImg:Bitmap = new skipBtnHClass();
		
		public var skipBtn:SimpleButton = new SimpleButton(
		skipBtnImg, skipBtnHImg, skipBtnHImg, skipBtnImg);
		
		[Embed(source='../lib/next.png')]
		public var nextBtnClass:Class;
		public var nextBtnImg:Bitmap = new nextBtnClass();
		
		[Embed(source='../lib/next_h.png')]
		public var nextBtnHClass:Class;
		public var nextBtnHImg:Bitmap = new nextBtnHClass
		
		public var nextBtn:SimpleButton = new SimpleButton(
		nextBtnImg, nextBtnHImg, nextBtnHImg, nextBtnImg);
		
		public function General() 
		{
			// Empty
		}
		
		public function alignCentre(obj:DisplayObject):void 
		{
			obj.x=300-obj.width/2;
			obj.y=200-obj.height/2;
		}
		
		public function hCentre(obj:DisplayObject):void 
		{
			obj.x=300-obj.width/2;
		}
		
		public function vCentre(obj:DisplayObject):void 
		{
			obj.y=200-obj.height/2;
		}
		
	}

}