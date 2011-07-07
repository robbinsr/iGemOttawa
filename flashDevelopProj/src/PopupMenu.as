package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	
	public class PopupMenu extends Sprite
	{
		
		[Embed(source = '../lib/popup.png')]
		private var popupMenuClass:Class;
		private var _popupMenu:Bitmap = new popupMenuClass();
		
		public function PopupMenu(components:Array) 
		{
			this.name = "PopupMenu";
			_popupMenu.x = 10
			_popupMenu.y = 20;
			this.addChild(_popupMenu);
			this.populate(components);
		}
		
		public function populate(components:Array):void
		{
			for (var i:Number = 0; i < components.length; i++) {
				
				components[i].x = _popupMenu.x + 12 + ((i % 4) * 66);
				components[i].y = _popupMenu.y + 12 + ((Math.floor(i / 4)) * 56);
				
				this.addChild(components[i]);
			}
		}
	}
}