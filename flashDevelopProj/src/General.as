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