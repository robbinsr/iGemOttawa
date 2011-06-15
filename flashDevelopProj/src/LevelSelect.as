package  
{
	/**
	 * ...
	 * @author richard
	 */
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	 
	public class LevelSelect extends MovieClip
	{
		[Embed(source='../lib/levelselectpage.PNG')]
		private var layer0Class:Class;
		private var layer0:Bitmap = new layer0Class();
		
		public function LevelSelect() 
		{
			this.addChild(layer0);
		}
		
	}

}