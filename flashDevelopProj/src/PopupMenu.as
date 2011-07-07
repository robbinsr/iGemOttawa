package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	public class PopupMenu extends Sprite
	{
		
		[Embed(source = '../lib/popup.png')]
		private var popupMenuClass:Class;
		private var _popupMenu:Bitmap = new popupMenuClass();
		
		private var currentButton:String;
		
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
				
				components[i].addEventListener(MouseEvent.ROLL_OVER, showName);
				components[i].addEventListener(MouseEvent.ROLL_OUT, hideName);
				this.addChild(components[i]);
			}
		}
		
		public function showName(e:MouseEvent):void {			
			var _name:TextField = new TextField();	
			_name.name = "Text_Field"
			_name.text =e.target.name;
			_name.x = 300;
			_name.y = 20;
			this.addChild(_name);
		}
		public function hideName(e:MouseEvent):void {
			this.removeChild(this.getChildByName("Text_Field"));
		}
	}
}