package  
{
	import flash.display.Sprite;
	import flash.display.Graphics;
	
	public class SequenceVector extends Sprite
	{
		//The starting X Y position, that is, the upper most point on the circle from which we'll draw
		//No idea what the actual numbers are, these are placeholders
		private var startX:Number = 300;
		private var startY:Number = 300;
		
		//Arbitrary, but 360 seems like a good number for a circle
		private var circumfrence:Number = 360;
		//This number is going to take some tuning (alot of these numbers will, I'm writing this very generically)
		private var radius:Number = 50;
		
		/* The weights below will be used to determine the length of the vectors.
		 * The hex numbers will be used during the draw function to use as it's color
		 * Their numbers must correspond to the same number in the component class 
		 */
		//codingSequences Weight
		private var weight1:Number = 1;
		private var color1:Number = 0x00000000;
		
		//operators Weight
		private var weight2:Number = 1;
		private var color2:Number = 0x00000000;
		
		//promoters Weight
		private var weight3:Number = 1;
		private var color3:Number = 0x00000000;
		
		//reporters Weight
		private var weight4:Number = 1;
		private var color4:Number = 0x00000000;
		
		//repressors Weight
		private var weight5:Number = 1;
		private var color5:Number = 0x00000000;
		
		//resGenes Weight
		private var weight6:Number = 1;
		private var color6:Number = 0x00000000;
		
		//terminators Weight
		private var weight7:Number = 1;
		private var color7:Number = 0x00000000;
		
		private var totalComponents:Number;
		
		private var currentSequence:Array;
		
		public function SequenceVector() 
		{
			currentSequence = new Array();
			this.totalComponents = 0;
		}
		
		public function add(category:int):void {
			currentSequence.add(this["weight" + category]);
			currentSequence.add(this["color" + category]);
			redraw();
		}
		
		public function remove():void {
			currentSequence.pop(); //color
			currentSequence.pop(); //vector weight
			redraw();
		}
		
		/* Brief overview of this algorithm:
		 * Remove all existing vectors from the stage.
		 * 
		 * Combine the weights of each part into a total weight.
		 * Divide the circumfrence by the total weight, this gives you a unit of distance per weight.
		 * Each vector then has length equal to it's weight * unit of distance.
		 * 
		 * Draw the vector, with the color and add it as a child.
		 * 
		 * 
		 * Calculate the finishing position and set it as the beggining position for the next one.
		 */
		private function redraw():void {
			for (var i:Number = 0; i < (currentSequence.length / 2); i++) {
				this.removeChild(this.getChildByName("arrow" + i));
			}
			var currentX:Number = startX;
			var currentY:Number = startY;
			var centerX:Number = startX + radius;
			var centerY:Number = startY + radius;
			
			var weightUnit:Number = 0;
			for (i = 0; i < (currentSequence.length / 2); i++) {
				weightUnit += currentSequence[i * 2];
			}
			weightUnit = (circumfrence / weightUnit);
			
			for (i = 0; i < currentSequence.length; i+2) {
				var length:Number = weightUnit * currentSequence[i];
				var color:Number = currentSequence[i + 1];
				
				var thisArrow:Sprite = new Sprite();
				var g:Graphics = thisArrow.graphics;
				
				//Draw vector
				var divisions:Number = Math.floor(length / (Math.PI / 4))+1;
				
				//Add child
				thisArrow.name = "arrow" + (i / 2);
				this.addChild(thisArrow);
				
				//Calculate and set finishing position
			}
		}
	}

}