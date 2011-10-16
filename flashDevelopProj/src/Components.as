package  
{
	import flash.display.Bitmap;
	import flash.display.SimpleButton;
	
	public class Components 
	{		
		// Component Names
		
		private var codingSequences:Array = new Array("\u03B2-galactosidase", "nitrate reductase I", "RNA polymerase", "GlpF", "ArsR", "GVP", "YFP", "BFP", "GFP", "mCherry", "CFP", "UCP1", "GluR0", "pabA","Streptavidin", "crtB", "LacY", "tetA");
		private var operators:Array = new Array("tetO", "TRE", "lacO", "LasO", "CinO", "CIO");
		private var promoters:Array = new Array("TDH3", "ALD6", "MYO2", "pArsR", "ADH1", "YEF3");
		private var reporters:Array = new Array("");
		private var repressors:Array = new Array("lacI", "TetR", "CI");
		private var resGenes:Array = new Array("AmpR", "ChlR", "KanR");
		private var terminators:Array = new Array("Terminator");
		private var activators:Array = new Array("LasR", "CinR", "TetR-VP16");
		
		// Component Descriptions
		
		private var galactosidase_desc:String = "An enzyme that catalyzes hydrolysis of disaccharides of glactose";
		private var nitratereductaseI_desc:String = "A molybdoenzyme responsible for the reduction of nitrates into nitrites";
		private var RNApolymerase_desc:String = "Produces RNA molecules by catalyzing the formation of phosphodiester bonds between nucleoside triphosphates";
		private var GlpF_desc:String = "An aquaglyceroporin, a type of membrane channel";
		private var ArsR_desc:String = "Metal sensor protein and transcriptional repressor that represses the expression of operons linked to stress-inducing concentrations of di- and multivalent heavy metal ions";
		private var GVP_desc:String = "The protein responsible for production of gas vesicle in the cell";
		private var YFP_desc:String = "A fluorescent protein with maximum absorption at 514 nm and maximum emission at 527 nm";
		private var BFP_desc:String = "A fluorescent protein with maximum absorption at 380 nm and maximum emission at 440 nm";
		private var GFP_desc:String = "A fluorescent protein with maximum absorption at 488 nm and maximum emission at 509 nm";
		private var mCherry_desc:String = "A fluorescent protein with maximum absorption at 587 nm and maximum emission at 610 nm";
		private var CFP_desc:String = "A fluorescent protein with maximum absorption at 435 nm and maximum emission at 475 nm";
		private var UCP1_desc:String = "An uncoupling protein that transports H+ ions with a gradient across the membrane producing heat";
		private var GluR0_desc:String = "A glutamate-gated K+ channel for intake of potassium";
		private var pabA_desc:String = "A protein involved in biosynthesis of p-aminobenzoic acid from chorismate";
		private var Streptavidin_desc:String = "Binds biotin with a high affinity: Kd ^(10-14)";
		private var crtB_desc:String = "The enzyme responsible for the conversion of geranylgeranyl diphosphate into phytoene in the carotenoid biosynthesis pathway";
		private var LacY_desc:String = "The lactose permease membrane protein which allows the internalization of lactose";
		private var tetA_desc:String = "";
		
		private var tetO_desc:String = "Operator site responsive to TetR";
		private var TRE_desc:String = "operator site responsive to TetR-VP16";
		private var lacO_desc:String = "Operator site responsive to Lac";
		private var LasO_desc:String = "Operator site responsive to LasR";
		private var CinO_desc:String = "Operator site responsive to CinR";
		private var CIO_desc:String = "Operator site responsive to CI";
		
		private var TDH3_desc:String = "This is a yeast promoter that has high expression";
		private var ALD6_desc:String = "This is a yeast promoter that has medium expression";
		private var MYO2_desc:String = "This is a yeast promoter that has low expression";
		private var pArsR_desc:String = "A promoter negatively regulated by ArsR not bound to arsenic";
		private var ADH1_desc:String = "This is a yeast promoter that has high expression";
		private var YEF3_desc:String = "This is a yeast promoter that has medium expression";
		
		private var lacI_desc:String = "Lactose induced repressor from E. coli";
		private var TetR_desc:String = "Tetracycline induced repressor from transposon Tn10";
		private var CI_desc:String = "Repressor from E.coli phage lambda";
		
		private var AmpR_desc:String = "The protein that digests ampicillin to an inactive form";
		private var ChlR_desc:String = "The protein that digests chloramphenicol to an inactive form";
		private var KanR_desc:String = "The protein that digests kanamycin to an inactive form";
		
		private var Terminator_desc:String = "3";
		
		private var LasR_desc:String = "Inducible activator from P. aeruginosa";
		private var CinR_desc:String = "Inducible activator from Rhizobium leguminosarum";
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
			0x0053b3, 
			0xd35b00, 
			0x047501, 
			0x0FF000, 
			0xaf052e, 
			0x35d1bc, 
			0x2299BB,
			0xcec70b
		);	
		
		public var componentHColors:Array = new Array(
			0x0088e5,
			0xe38e1a,
			0x2ba826,
			0xFFFFFF,
			0xd61f4b, 
			0x48E8D2,
			0xFFFFFF,
			0xeae31c
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
			if (name == "\u03B2-galactosidase")
				descriptionName = "galactosidase_desc";
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