package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.MovieClip;
	import com.greensock.TweenLite;
	import com.greensock.plugins.TweenPlugin; 
	import com.greensock.plugins.VisiblePlugin; 
	
	// Example use:
	// Main.backgroundImage.changeBackground(2);
	
	public class Background extends MovieClip
	{
		[Embed(source='../lib/bg/bg1.jpg')]
		private var bg1Class:Class;
		private var bg1:Bitmap = new bg1Class();
		
		[Embed(source='../lib/bg/bg2.jpg')]
		private var bg2Class:Class;
		private var bg2:Bitmap = new bg2Class();
		
		[Embed(source='../lib/bg/bg3.jpg')]
		private var bg3Class:Class;
		private var bg3:Bitmap = new bg3Class();
		
		[Embed(source='../lib/bg/bg4.jpg')]
		private var bg4Class:Class;
		private var bg4:Bitmap = new bg4Class();
		
		[Embed(source='../lib/bg/scroll1.png')]
		private var scrollBG:Class;
		private var bgs1:Bitmap = new scrollBG();
		private var bgs2:Bitmap = new scrollBG();
		
		[Embed(source='../lib/bg/scroll2.png')]
		private var scrollBG2:Class;
		private var bgs3:Bitmap = new scrollBG2();
		private var bgs4:Bitmap = new scrollBG2();
		
		private var startTime:Number;
		private var pauseTime:Number
		private var nowTime:Number;
		private var timerPaused:Boolean;
		private var currentMinutes:int;
		private var currentSeconds:int;
		private var currentTime:String;
		private var timeForm:TextFormat;
		private var timeText:TextField;
		
		public function Background(bg:int) 
		{
			var backgroundImage:String = "bg" + bg;
			this.addChild(this[backgroundImage]);
			
			addChild(bgs1); 
			addChild(bgs2);
			bgs1.x = 0;
			bgs2.x = bgs1.width;
			this.addEventListener(Event.ENTER_FRAME, scrollIMG); 
			
			addChild(bgs3); 
			addChild(bgs4);
			bgs3.x = 0;
			bgs4.x = bgs3.width;
			this.addEventListener(Event.ENTER_FRAME, scrollIMG2); 
			
			// Timer properties
			timeText = new TextField();
			timeText.x = 200;
			timeText.y = 20;
			timeText.selectable = false;
			
			timeForm = new TextFormat();
			timeForm.bold = true;
			timeForm.size = 20;
			timeForm.color = 0xFFFFFF;
			timeText.defaultTextFormat = timeForm;
			
			startTime = new Date().getTime();
			pauseTimer();
			addChild(timeText);
			this.addEventListener(Event.ENTER_FRAME, updateTimer);
		}
		
		public function scrollIMG(e:Event):void 
		{
			bgs1.x -= 2; 
			bgs2.x -= 2;
			
			if(bgs1.x < -bgs1.width){
				bgs1.x = bgs1.width;
			}else if(bgs2.x < -bgs2.width){
				bgs2.x = bgs2.width;
			}
		}
		
		public function scrollIMG2(e:Event):void 
		{
			bgs3.x -= 1; 
			bgs4.x -= 1;
			
			if(bgs3.x < -bgs3.width){
				bgs3.x = bgs3.width;
			}else if(bgs4.x < -bgs4.width){
				bgs4.x = bgs4.width;
			}
		}
		
		public function changeBackground(bg:int):void
		{
			var backgroundImage:String = "bg" + bg;
			this.removeChildAt(0);
			this.addChildAt(this[backgroundImage],0);
		}
		
		public function resetTimer():void {
			startTime = new Date().getTime();
		}
		
		public function pauseTimer():void {
			timerPaused = true;
			pauseTime = new Date().getTime();
			TweenLite.to(timeText, 0.5, {alpha:0, visible:false});
		}
		
		public function unpauseTimer():void {
			startTime += (new Date().getTime() - pauseTime);
			timerPaused = false;
			timeText.alpha = 1;
			timeText.visible = true;
		}
		
		public function updateTimer(e:Event):void {
			if(!timerPaused){
				nowTime = new Date().getTime();				
				currentSeconds = (nowTime - startTime)/1000 % 60;
				currentMinutes = (nowTime - startTime)/60000;
				currentTime = (currentMinutes < 10? "0" + currentMinutes:currentMinutes) + ":";
				currentTime += (currentSeconds < 10? "0" + currentSeconds:currentSeconds);
				timeText.text = currentTime;
			}
		}	
		
		public function getTimer():int {
			return (nowTime - startTime)/1000;
		}
	}
}