package  
{
	import flash.display.Bitmap;
	import flash.display.SimpleButton;
	
	public class Components 
	{		
		// Component Names
		
		private var codingSequences:Array = new Array("");
		private var operators:Array = new Array("");
		private var promoters:Array = new Array("High", "Medium", "Low");
		private var reporters:Array = new Array("");
		private var repressors:Array = new Array("");
		private var resGenes:Array = new Array("AmpR","ChlR","KanR");
		private var terminators:Array = new Array("Terminator");
		
		// Component Descriptions
		
		private var High_desc:String = "1";
		private var Medium_desc:String = "2";
		private var Low_desc:String = "3";
		
		private var AmpR_desc:String = "1";
		private var ChlR_desc:String = "2";
		private var KanR_desc:String = "3";
		
		private var Terminator_desc:String = "3";
		
		// General Component Arrays
		
		protected var componentArray:Array = new Array(
			codingSequences, 
			operators, 
			promoters, 
			reporters, 
			repressors, 
			resGenes, 
			terminators
		);
		
		public var componentColors:Array = new Array(
			0xFF0000, 
			0x00FF00, 
			0x0000FF, 
			0x0FF000, 
			0x000FF0, 
			0xAA1133, 
			0x2299BB
		);	
		
		// Component Methods
		
		public function Components() 
		{
			
		}
		
		public function getComponentCategoryFromBtn(name:String):int
		{
			if (name == "codingseqBtn")
				return 0
			else if (name == "operatorBtn")
				return 1	
			else if (name == "promoterBtn")
				return 2
			else if (name == "reporterBtn")
				return 3
			else if (name == "repressorBtn")
				return 4
			else if (name == "resgenesBtn")
				return 5
			else if (name == "terminatorBtn")
				return 6
			else
				return 6
		}
		
		public function getComponentDescription(name:String):String
		{
			return this[name+"_desc"];
		}
		
		public function getComponentId(category:int, name:String):String
		{
			var subId:String = "";
			
			for (var i:int = 0; i < componentArray[category].length; i++) {
				if (name == componentArray[category][i]) {
					subId = String(i);
				}
			}
			
			var partId:String = String(category) + "." + String(subId);
			return partId;
		}
		
		public function getComponentButtonArray(type:String,availableComponents:Array):Array
		{	
			var componentList:Array = new Array();
			
			for each ( var i:String in availableComponents) {
				if (i.indexOf(type + ".") != -1) {
					componentList.push(componentArray[int(type)][int(i.substr(2, 2))]);
				}
			}
			
			return componentList;
		}		
	}
}