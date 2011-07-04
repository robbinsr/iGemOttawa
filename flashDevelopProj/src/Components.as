package  
{
	import flash.display.SimpleButton;
	
	public class Components 
	{
		private var codingSequences:Array = new Array("CodingSequence1","CodingSequence2","CodingSequence3");
		private var operators:Array = new Array("Operator1","Operator2","Operator3");
		private var promoters:Array = new Array("Promoter1","Promoter2","Promoter3");
		private var reporters:Array = new Array("Reporter1","Reporter2","Reporter3");
		private var repressors:Array = new Array("Repressor1","Repressor2","Repressor3");
		private var resGenes:Array = new Array("ResGene1","ResGene2","ResGene3");
		private var terminators:Array = new Array("Terminator1","Terminator2","Terminator3");
		
		protected var componentArray:Array = new Array(
		codingSequences, operators, promoters, reporters, repressors, resGenes, terminators);
		
		public function Components() 
		{
			
		}
		
		public function getComponentName(type:Number, index:Number):String
		{
			return componentArray[type][index];
		}
		
		
		public function getComponentButtonArray(type:String,availableComponents:Array):Array
		{	
			var componentList:Array = new Array();
			
			for each ( var i:String in availableComponents) {
				if (i.indexOf(type + ".") != -1) {
					componentList.push(componentArray[int(type)][int(i.substr(2,2))]);
				}
			}
			
			return componentList;
		}

		//I'll iterate through this class to populate the popupMenu with the embedded buttons.
		//those buttons should be defined here to keep things clean
		
	}
}