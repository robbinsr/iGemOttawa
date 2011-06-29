package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	//textfield for testing purposes, remove later
	import flash.text.TextField;
	
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
			//testing menu populate
			for (var i:Number = 0; i < components.length; i++) {
				var testText:TextShadow = new TextShadow(
					"<p>"+components[i]+"</p>",_popupMenu.x + 12,_popupMenu.y + (i * 15) + 10,100,100);
				this.addChild(testText);
			}
		}
	}
}