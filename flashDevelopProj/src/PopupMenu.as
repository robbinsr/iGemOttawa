package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.AntiAliasType;
    import flash.text.GridFitType;
    import flash.text.TextFormat;
	import com.greensock.TweenLite;
	import flash.events.*;
	
	public class PopupMenu extends Sprite
	{
		// Popup Bitmaps
		
		[Embed(source = '../lib/popup.png')]
		private var popupMenuClass:Class;
		private var _popupMenu:Bitmap = new popupMenuClass();
		
		[Embed(source='../lib/popupbutton.png')]
		public var popupBtnClass:Class;
		public var popupBtnImg:Bitmap = new popupBtnClass();
		
		[Embed(source='../lib/popupbutton_h.png')]
		public var popupBtnHClass:Class;
		public var popupBtnHImg:Bitmap = new popupBtnHClass();
		
		// Buttons, labels, and descriptions
		
		private var button0:SimpleButton = new SimpleButton(new Bitmap(popupBtnImg.bitmapData), popupBtnHImg, popupBtnHImg, popupBtnImg);
		private var button1:SimpleButton = new SimpleButton(new Bitmap(popupBtnImg.bitmapData), popupBtnHImg, popupBtnHImg, popupBtnImg);
		private var button2:SimpleButton = new SimpleButton(new Bitmap(popupBtnImg.bitmapData), popupBtnHImg, popupBtnHImg, popupBtnImg);
		private var button3:SimpleButton = new SimpleButton(new Bitmap(popupBtnImg.bitmapData), popupBtnHImg, popupBtnHImg, popupBtnImg);
		private var button4:SimpleButton = new SimpleButton(new Bitmap(popupBtnImg.bitmapData), popupBtnHImg, popupBtnHImg, popupBtnImg);
	
		private var buttonText0:TextShadow = new TextShadow("", 0, 0, 100, 20, 1);
		private var buttonText1:TextShadow = new TextShadow("", 0, 0, 100, 20, 1);
		private var buttonText2:TextShadow = new TextShadow("", 0, 0, 100, 20, 1);
		private var buttonText3:TextShadow = new TextShadow("", 0, 0, 100, 20, 1);
		private var buttonText4:TextShadow = new TextShadow("", 0, 0, 100, 20, 1);
		
		private var componentDescription:TextField = new TextField();
		private var format:TextFormat = new TextFormat();
		
		public var currentCategory:int;
		
		// Creating and populating popup
		
		public function PopupMenu() 
		{
			componentDescription.name = "Description_Text";
			componentDescription.x = 10;
			componentDescription.y = 190;
			componentDescription.wordWrap = true;
			componentDescription.width = 160;
			componentDescription.height = 300;
			componentDescription.textColor = 0x111111;
			this.addChild(componentDescription);
			
			this.name = "PopupMenu";
			_popupMenu.x = 10
			_popupMenu.y = 20;
			this.addChild(_popupMenu);
			
			for (var i:Number = 0; i < 5; i++) {
				this["button" + i].x = _popupMenu.x + 10;
				this["button" + i].y = _popupMenu.y + 10 + (i * 30);
				
				this["buttonText" + i].setPosition(_popupMenu.x + 15, _popupMenu.y + 11 + (i * 30));
				this["buttonText" + i].mouseEnabled = false;
				
				this["button" + i].addEventListener(MouseEvent.ROLL_OVER, showDescription);
				this["button" + i].addEventListener(MouseEvent.ROLL_OUT, hideDescription);
				this["button" + i].addEventListener(MouseEvent.CLICK, buttonClick);
				
				this.addChild(this["button" + i]);
				this.addChild(this["buttonText" + i]);
			}
		}
		
		public function populate(components:Array, currentCategory:int):void
		{
			this.currentCategory = currentCategory;
			
			var i:Number = 0;
			for (i = 0; i < 5; i++) {
				this["button" + i].visible = false;
				this["buttonText" + i].visible = false;
			}
			
			for (i = 0; i < components.length; i++) {
				
				this["button" + i].name = components[i];
				this["buttonText" + i].setText("<p>"+components[i]+"</p>");

				this["button" + i].visible = true;
				this["buttonText" + i].visible = true;
			}
		}
		
		// Button event handlers
		
		public function showDescription(e:MouseEvent):void {			
			componentDescription.text = Level.components.getComponentDescription(e.target.name);
			this.componentDescription.visible = true;
		}
		
		public function hideDescription(e:MouseEvent):void {
			this.componentDescription.visible = false;
		}
		
		public function buttonClick(e:MouseEvent):void {
			Level.addComponent(currentCategory, e.target.name)
		}
	}
}