package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	//textfield for testing purposes, remove later
	import flash.text.TextField;
	
	public class PopupMenu extends Sprite
	{
		
		[Embed(source = '../lib/popupMenu.PNG')]
		private var popupMenuClass:Class;
		private var _popupMenu:Bitmap = new popupMenuClass();
		
		public function PopupMenu(components:Array) 
		{
			this.name = "PopupMenu";
			_popupMenu.x = 15
			_popupMenu.y = 15;
			this.addChild(_popupMenu);
			this.populate(components);
		}
		
		public function populate(components:Array):void
		{
			//testing menu populate
			for (var i:Number = 0; i < components.length; i++) {
				var testText:TextField = new TextField();
				testText.text = components[i];
				testText.x = _popupMenu.x + 25;
				testText.y = _popupMenu.y + i * 15;
				this.addChild(testText);
			}
		}
	}
}