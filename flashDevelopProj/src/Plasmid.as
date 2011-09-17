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
	import com.greensock.plugins.TweenPlugin; 
	import com.greensock.plugins.VisiblePlugin; 
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
		
		// Plasmid Arrows on Hover
		
		[Embed(source='../lib/plasmid/1h.png')]
		public var arrow1hClass:Class;
		public var arrow1h:Bitmap = new arrow1hClass();
		
		[Embed(source='../lib/plasmid/2h.png')]
		public var arrow2hClass:Class;
		public var arrow2h:Bitmap = new arrow2hClass();
		
		[Embed(source='../lib/plasmid/3h.png')]
		public var arrow3hClass:Class;
		public var arrow3h:Bitmap = new arrow3hClass();
		
		[Embed(source='../lib/plasmid/4h.png')]
		public var arrow4hClass:Class;
		public var arrow4h:Bitmap = new arrow4hClass();
		
		[Embed(source='../lib/plasmid/5h.png')]
		public var arrow5hClass:Class;
		public var arrow5h:Bitmap = new arrow5hClass();
		
		[Embed(source='../lib/plasmid/6h.png')]
		public var arrow6hClass:Class;
		public var arrow6h:Bitmap = new arrow6hClass();
		
		[Embed(source='../lib/plasmid/7h.png')]
		public var arrow7hClass:Class;
		public var arrow7h:Bitmap = new arrow7hClass();
		
		[Embed(source='../lib/plasmid/8h.png')]
		public var arrow8hClass:Class;
		public var arrow8h:Bitmap = new arrow8hClass();
		
		// Tracking
		
		private var currentArrowIndex:Number;
		private var lastPlasmid:String = "bacteria1";
		
		public function Plasmid() 
		{
			TweenPlugin.activate([VisiblePlugin]);
			
			bacteria1.alpha = 1;
			bacteria1.x = 287;
			bacteria1.y = 77;
			this.addChild(bacteria1);
			
			arrow1.x = 389;
			arrow1.y = 71;
			
			arrow2.x = 454;
			arrow2.y = 101;
			
			arrow3.x = 458;
			arrow3.y = 177;
			
			arrow4.x = 391;
			arrow4.y = 242;
			
			arrow5.x = 321;
			arrow5.y = 247;
			
			arrow6.x = 276;
			arrow6.y = 177;
			
			arrow7.x = 283;
			arrow7.y = 109;
			
			arrow8.x = 315;
			arrow8.y = 65;
			
			currentArrowIndex = 1;
			for (var i:Number = 1; i < 9; i++) {
				this["arrow" + i].alpha = 0;
				this.addChild(this["arrow" + i])
			}
		}
		
		public function changePlasmid(i:int):void
		{
			var index:int = this.getChildIndex(this[lastPlasmid]);
			this.removeChild(this[lastPlasmid]);
			
			lastPlasmid = "bacteria" + i;
			this[lastPlasmid].alpha = 1;
			this[lastPlasmid].x = 287;
			this[lastPlasmid].y = 77;
			this.addChild(this[lastPlasmid]);
			this.setChildIndex(this[lastPlasmid],index);
		}
		
		public function addArrow(color:uint):void {
			var arrowName:String = "arrow" + currentArrowIndex++;
			var newColour:ColorTransform = new ColorTransform(0, 0, 0, 1, color >> 16 & 0xff, color >> 8 & 0xff, color & 0xff, 0);
			this[arrowName].bitmapData.colorTransform(new Rectangle(0, 0, this[arrowName].width, this[arrowName].height), newColour);
			this[arrowName].visible = true;
			TweenLite.to(this[arrowName], 0.75, {alpha:1} );
		}
		
		public function removeArrow():void {
			TweenLite.to(this["arrow" + --currentArrowIndex], 0, {alpha:0, visible:false});
		}
		
		public function resetArrows():void {
			currentArrowIndex = 1;
			for (var i:Number = 1; i < 9; i++) {
				//this["arrow" + i].y = 66;
				//this["arrow" + i].x = 277;
				this["arrow" + i].y = 30;
				this["arrow" + i].x = 240;
				this["arrow" + i].alpha = 0;
			}
		}
	}

}