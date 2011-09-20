package  
{
	import flash.display.Bitmap;
	import flash.display.SimpleButton;
	
	public class Components 
	{		
		// Component Names
		
		private var codingSequences:Array = new Array("-galactosidase", "BFP", "GFP", "GlpF", "ArsR", "GVP");
		private var operators:Array = new Array("tetO", "TRE", "lacO", "LasO", "CinO", "CIO");
		private var promoters:Array = new Array("High-exp", "Medium-exp", "Low-exp", "pArsR");
		private var reporters:Array = new Array("");
		private var repressors:Array = new Array("lacI", "c1 rep", "c2 rep", "TetR", "CI");
		private var resGenes:Array = new Array("AmpR", "ChlR", "KanR");
		private var terminators:Array = new Array("Terminator");
		private var activators:Array = new Array("VP16", "ToxR", "appY", "LasR", "CinR", "TetR-VP16");
		
		// Component Descriptions
		
		private var galactosidase_desc:String = "1";
		private var BFP_desc:String = "1";
		private var GFP_desc:String = "1";
		private var GlpF_desc:String = "1";
		private var ArsR_desc:String = "1";
		private var GVP_desc:String = "1";

		private var tetO_desc:String = "Operator site responsive to TetR";
		private var TRE_desc:String = "operator site responsive to TetR-VP16";
		private var lacO_desc:String = "Operator site responsive to Lac";
		private var LasO_desc:String = "Operator site responsive to LasR";
		private var CinO_desc:String = "Operator site responsive to CinR";
		private var CIO_desc:String = "Operator site responsive to CI";
		
		private var Highexp_desc:String = "1";
		private var Mediumexp_desc:String = "2";
		private var Lowexp_desc:String = "3";
		private var pArsR_desc:String = "3";
		
		private var lacI_desc:String = "Lactose induced repressor from <i>E. coli</i>";
		private var c1rep_desc:String = "2";
		private var c2rep_desc:String = "3";
		private var TetR_desc:String = "Tetracycline induced repressor from transposon Tn10";
		private var CI_desc:String = "Repressor from E.coli phage lambda";
		
		private var AmpR_desc:String = "1";
		private var ChlR_desc:String = "2";
		private var KanR_desc:String = "3";
		
		private var Terminator_desc:String = "3";
		
		private var VP16_desc:String = "1";
		private var ToxR_desc:String = "2";
		private var appY_desc:String = "3";
		private var LasR_desc:String = "Inducible activator from <i>P. aeruginosa</i>";
		private var CinR_desc:String = "Inducible activator from <i>Rhizobium leguminosarum</i>";
		private var TetRVP16_desc:String = "Tetracycline induced repressor fused with the activation " + 
		"domain VP16. Will behave as an activator";
		
		// General Component Arrays
		
		protected var componentArray:Array = new Array(
			codingSequences, 
			operators, 
			promoters, 
			reporters, 
			repressors, 
			resGenes, 
			terminators,
			activators
		);
		
		public var componentColors:Array = new Array(
			0xFF0000, 
			0x00FF00, 
			0x0000FF, 
			0x0FF000, 
			0x000FF0, 
			0xAA1133, 
			0x2299BB,
			0xFFFFFF
		);	
		
		public var componentHColors:Array = new Array(
			0xFFFFFF,
			0xFFFFFF,
			0xFFFFFF,
			0xFFFFFF,
			0xFFFFFF, 
			0xFFFFFF,
			0xFFFFFF,
			0xFFFFFF
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
			else if (name == "activatorBtn")
				return 7
			else
				return 6
		}
		
		public function getComponentDescription(name:String):String
		{
			var descriptionName:String = name + "_desc";
			var pattern:RegExp = /[-]|\s/g;
			descriptionName = descriptionName.replace(pattern, "");
			
			return this[descriptionName];
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