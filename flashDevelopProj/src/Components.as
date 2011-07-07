package  
{
	import flash.display.Bitmap;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	//for testing
	import flash.text.TextField;
	
	public class Components 
	{	
		[Embed(source = '../lib/levelInterface/optionTile56x48.PNG')]
		private var componentClass:Class;
		private var _component:Bitmap = new componentClass();		
		
		//Here's a ton of buttons used to populate the menu. Functional? Yes. Ugly? Extremely.
		//But at least this gives us the ability to differentiate between the components, by maybe chaing the color or something
		
		//Coding sequences:
		private var cs1:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs2:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs3:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs4:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs5:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs6:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs7:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs8:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs9:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs10:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs11:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs12:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs13:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs14:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs15:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs16:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs17:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs18:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs19:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		private var cs20:SimpleButton = new SimpleButton(_component, _component, _component, _component);
		
		private var codingSequences:Array = new Array(cs1,cs2,cs3,cs4,cs5,cs6,cs7,cs8,cs9,cs10,cs11,cs12,cs13,cs14,cs15,cs16,cs17,cs18,cs19,cs20);				
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
					componentArray[int(type)][int(i.substr(2, 2))].addEventListener(MouseEvent.CLICK, showName);
					componentList.push(componentArray[int(type)][int(i.substr(2, 2))]);
				}
			}
			
			return componentList;
		}
		
		public function showName():void {
			var _name:TextField = new TextField();
			_name.text = "test";
			_name.x = 10;
			_name.y = 50;
		}
	}
}