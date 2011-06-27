package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.DisplayObject;
		
	// Hold general position functions and 
	// whatever else that might come in handy
	
	public class General extends MovieClip 
	{
		
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