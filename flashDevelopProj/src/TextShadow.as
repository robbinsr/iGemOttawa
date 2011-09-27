package  
{
	import flash.display.Bitmap;
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.display.Bitmap;
	
	// Use:
	// private var tutorialText:TextShadow = new TextShadow(string,x,y,width,height,textStyle);
	//
	// text.setText(scenario);
	// this.addChild(rext);
	
	public class TextShadow extends MovieClip
	{
		private var textField:TextField = new TextField();
		private var shadow:TextField = new TextField();
		private var color1:String;
		private var color2:String;
		private var css:String;
		private var css2:String;
		
		public function TextShadow(text:String, textX:int, textY:int, textWidth:int, textHeight:int, textStyle:int) 
		{	
			
			// Add new styles as required
			if (textStyle == 1) {
				css = "p {font-size: 11pt; color: #dddddd; font-family: Tahoma;}";
				css2 = "p {font-size: 11pt; color: #555555; font-family: Tahoma;}";
			}
			else if (textStyle == 2) {
				css = "p {font-size: 14pt; color: #efefef; font-family: Helvetica, Arial; font-weight: bold;}";
				css2 = "p {font-size: 14pt; color: #101010; font-family: Helvetica, Arial; font-weight: bold;}";
			}
			else {
				css = "p {font-size: 11pt; color: #ebebeb; font-family: Tahoma;}";
				css2 = "p {font-size: 11pt; color: #101010; font-family: Tahoma;}";
			}
			
			var style:StyleSheet = new StyleSheet();
			style.parseCSS(css);
			textField.styleSheet = style;
			
			var shadowStyle:StyleSheet = new StyleSheet();
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
		
		// textShadow set functions
		
		public function setText(text:String):void
		{
			this.textField.htmlText = text;
			this.shadow.htmlText = text;
		}
		
		public function setPosition(textX:int, textY:int):void
		{
			this.shadow.x = textX - 1;
			this.shadow.y = textY - 1;
			this.textField.x = textX;
			this.textField.y = textY;
		}
	}

}