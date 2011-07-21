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
		
		[Embed(source = '../lib/levelInterface/optionTile56x48.PNG')]
		private var componentClass:Class;
		private var _component:Bitmap = new componentClass();
		
		private var button0:SimpleButton = new SimpleButton(new Bitmap(_component.bitmapData), _component, _component, _component);
		private var button1:SimpleButton = new SimpleButton(new Bitmap(_component.bitmapData), _component, _component, _component);
		private var button2:SimpleButton = new SimpleButton(new Bitmap(_component.bitmapData), _component, _component, _component);
		private var button3:SimpleButton = new SimpleButton(new Bitmap(_component.bitmapData), _component, _component, _component);
		private var button4:SimpleButton = new SimpleButton(new Bitmap(_component.bitmapData), _component, _component, _component);
		
		private var componentDescription:TextField = new TextField();
		
		public function PopupMenu(components:Array) 
		{
			componentDescription.name = "Description_Text";
			componentDescription.x = 300;
			componentDescription.y = 20;
			componentDescription.wordWrap = true;
			componentDescription.width = 150;
			componentDescription.height = 300;
			
			this.name = "PopupMenu";
			_popupMenu.x = 10
			_popupMenu.y = 20;
			this.addChild(_popupMenu);
			this.populate(components); 
		}
		
		public function populate(components:Array):void
		{
			for (var i:Number = 0; i < components.length; i++) {
				
				this["button" + i].x = _popupMenu.x + 12;
				this["button" + i].y = _popupMenu.y + 12 + (i*56);
				
				this["button" + i].addEventListener(MouseEvent.ROLL_OVER, showDescription);
				this["button" + i].addEventListener(MouseEvent.ROLL_OUT, hideDescription);
				
				this["button" + i].name = components[i];
				this.addChild(this["button" + i]);
			}
		}
		
		public function showDescription(e:MouseEvent):void {			
			var _Description:TextField = new TextField();	
			componentDescription.text = Level.components.getComponentDescription(e.target.name);
			this.addChild(componentDescription);
		}
		public function hideDescription(e:MouseEvent):void {
			this.removeChild(this.getChildByName("Description_Text"));
		}
	}
}