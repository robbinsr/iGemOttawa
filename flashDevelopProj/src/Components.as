package  
{
	import com.greensock.layout.AlignMode;
	import flash.display.SimpleButton;
	public class Components 
	{
		private var codingSequences:Array = new Array("exampleCodingSequence");
		private var operators:Array = new Array();
		private var promoters:Array = new Array();
		private var reporters:Array = new Array();
		private var repressors:Array = new Array();
		private var resGenes:Array = new Array();
		private var terminators:Array = new Array();
		
		
		
		protected var componentArray:Array = new Array(codingSequences, operators, promoters, reporters, repressors, resGenes, terminators);
		
		public function Components() 
		{
			
		}
		
		public function getComponentName(type:Number, index:Number):String
		{
			return componentArray[type][index];
		}
		
		
		public function getComponentButtonArray(type:String):Array
		{	
			//test, work in progress
			switch(type)
			{
				case("codingSequence"):
					return new Array("codingSequence ", "one, ", "two, ", "three, ");
					break;
				case("operator"):
					return new Array("operator ", "one, ", "two, ", "three, ");
					break;
			}
			//this will never happen, but the compiler seems to think it might.
			return new Array();
		}

		//I'll iterate through this class to populate the popupMenu with the embedded buttons.
		//those buttons should be defined here to keep things clean
		
	}
}