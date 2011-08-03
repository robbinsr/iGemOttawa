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
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;
	
	public class Plasmid extends Sprite
	{
		// Plasmid Bacteria
		
		[Embed(source='../lib/plasmid/bacteria1.png')]
		private var bacteria1Class:Class;
		private var bacteria1:Bitmap = new bacteria1Class();
		
		[Embed(source='../lib/plasmid/bacteria2.png')]
		private var bacteria2Class:Class;
		private var bacteria2:Bitmap = new bacteria2Class();
		
		[Embed(source='../lib/plasmid/bacteria3.png')]
		private var bacteria3Class:Class;
		private var bacteria3:Bitmap = new bacteria3Class();
		
		[Embed(source='../lib/plasmid/bacteria4.png')]
		private var bacteria4Class:Class;
		private var bacteria4:Bitmap = new bacteria4Class();
		
		// Plasmid Arrows
		
		[Embed(source='../lib/plasmid/1.png')]
		public var arrow1Class:Class;
		public var arrow1:Bitmap = new arrow1Class();
		
		[Embed(source='../lib/plasmid/2.png')]
		public var arrow2Class:Class;
		public var arrow2:Bitmap = new arrow2Class();
		
		[Embed(source='../lib/plasmid/3.png')]
		public var arrow3Class:Class;
		public var arrow3:Bitmap = new arrow3Class();
		
		[Embed(source='../lib/plasmid/4.png')]
		public var arrow4Class:Class;
		public var arrow4:Bitmap = new arrow4Class();
		
		[Embed(source='../lib/plasmid/5.png')]
		public var arrow5Class:Class;
		public var arrow5:Bitmap = new arrow5Class();
		
		[Embed(source='../lib/plasmid/6.png')]
		public var arrow6Class:Class;
		public var arrow6:Bitmap = new arrow6Class();
		
		[Embed(source='../lib/plasmid/7.png')]
		public var arrow7Class:Class;
		public var arrow7:Bitmap = new arrow7Class();
		
		[Embed(source='../lib/plasmid/8.png')]
		public var arrow8Class:Class;
		public var arrow8:Bitmap = new arrow8Class();
		
		public function Plasmid() 
		{
			bacteria1.alpha = 1;
			bacteria1.x = 287;
			bacteria1.y = 77;
			this.addChild(bacteria1);
		}
		
		public function changePlasmid(i:int):void
		{
			this.removeChild(bacteria1);
			
			var name:String = "bacteria" + i;
			this[name].alpha = 1;
			this[name].x = 287;
			this[name].y = 77;
			this.addChild(this[name]);
		}
		
		public function addArrow(id:String, arrowNum:int, color:uint):void
		{
			var arrowName:String = "arrow" + arrowNum;
			var newColour:ColorTransform = new ColorTransform(0, 0, 
				0, 1, color >> 16 & 0xff, color >> 8 & 0xff, color & 0xff, 0);
			this[arrowName].bitmapData.colorTransform(new Rectangle(0, 0, 
				this[arrowName].width, this[arrowName].height), newColour);
				
			this[arrowName].alpha = 0;
			this[arrowName].y = 66;
			this[arrowName].x = 277;
			this.addChild(this[arrowName]);
			TweenLite.to(this[arrowName], 1, { alpha:1 } );
		}
		
	}

}