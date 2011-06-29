package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.display.Bitmap;
	
	// Use:
	// private var tutorialText:TextShadow = new TextShadow(string,x,y,width,height);
	//
	// text.setText(scenario);
	// this.addChild(rext);
	
	public class TextShadow extends MovieClip
	{
		private var textField:TextField = new TextField();
		private var shadow:TextField = new TextField();
		
		public function TextShadow(text:String, textX:int, textY:int, textWidth:int, textHeight:int) 
		{
			var style:StyleSheet = new StyleSheet();
			var css:String = "p {font-size: 11pt; color: #ebebeb; font-family: Tahoma;}" +
			"strong { font-weight: bold; display: inline; }";
			style.parseCSS(css);
			textField.styleSheet = style;
			
			var shadowStyle:StyleSheet = new StyleSheet();
			var css2:String = "p {font-size: 11pt; color: #101010; font-family: Tahoma;}" +
			"strong { font-weight: bold; display: inline; }";
			shadowStyle.parseCSS(css2);
			shadow.styleSheet = shadowStyle;
			
			shadow.mouseEnabled = false;
			shadow.wordWrap = true;
			shadow.htmlText = text;
			shadow.x = textX - 1;
			shadow.y = textY - 1;
			shadow.width = textWidth;
			shadow.height = textHeight;
			addChild(shadow);
			
			textField.mouseEnabled = false;
			textField.wordWrap = true;
			textField.htmlText = text;
			textField.x = textX;
			textField.y = textY;
			textField.width = textWidth;
			textField.height = textHeight;
			addChild(textField);
		}
		
		public function setText(text:String):void
		{
			this.textField.htmlText = text;
			this.shadow.htmlText = text;
		}
	}

}