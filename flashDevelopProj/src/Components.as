package  
{
	import flash.display.Bitmap;
	import flash.display.SimpleButton;
	
	public class Components 
	{		
		
		private var codingSequences:Array = new Array("CodingSequence1", "CodingSequence2", "CodingSequence3","CodingSequence4","CodingSequence5");
		private var operators:Array = new Array("Operator1", "Operator2", "Operator3", "Operator4", "Operator5");
		private var promoters:Array = new Array("Promoter1", "Promoter2", "Promoter3", "Promoter4", "Promoter5");
		private var reporters:Array = new Array("Reporter1","Reporter2","Reporter3");
		private var repressors:Array = new Array("Repressor1","Repressor2","Repressor3");
		private var resGenes:Array = new Array("ResGene1","ResGene2","ResGene3");
		private var terminators:Array = new Array("Terminator1", "Terminator2", "Terminator3");
		
		/* Component Descriptions */
		
		private var CodingSequence1_desc:String = "this is coding sequence 1";
		private var CodingSequence2_desc:String = "Very long string to test that wrapping works properly asdfasklhf asd fas df sdf asdf as dfa sd asdf sadf asd fas df asdf asdf"+
		"sad fa sdf asdf asd fas df asd fas df asd fas df asdf asd fa sdf asd fas df asdf ";
		private var CodingSequence3_desc:String = "something something something";
		private var CodingSequence4_desc:String = "CS 4";
		private var CodingSequence5_desc:String = "Coding sequence 5";
		
		private var Promoter1_desc:String = "1";
		private var Promoter2_desc:String = "2";
		private var Promoter3_desc:String = "3";
		private var Promoter4_desc:String = "4";
		private var Promoter5_desc:String = "5";
		
		//More to come. Stay tuned, same bat channel...
		
		/* End of Component Descriptions */
		
		protected var componentArray:Array = new Array(
		codingSequences, operators, promoters, reporters, repressors, resGenes, terminators);
		
		public function Components() 
		{
			
		}
		
		public function getComponentDescription(name:String):String
		{
			return this[name+"_desc"];
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