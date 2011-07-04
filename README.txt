More changes:

I don't think there's all that much point to showing all the available components 
in every level - just keep it to so many options. No point throwing all content at 
them to see right off the bat, as it'll potentially give away future scenarios.
Anyway, those options can be defined via:
this.availableComponents = new Array("0.0", "0.1", "0.2", "2.0", "2.1", "2.2");
The period serves as a delimiter to differentiate between first dimension index 
and second of the componentArray.

For drawing the buttons on the bottom, we list which categories of components will 
be used for the level. The rest won't be drawn. The greying out of buttons to 
encourage a particular order of component placement can be done later.
this.componentCategories = new Array(0, 2);

We can store the winning sequence as such:
this.winningSequence = new Array("0.0", "2.0");
With 0-6 corresponding to the 7 different categories of components.

With this way of doing things, we can also order the components as we'd like 
for each individual level. Using this order as well as number of components, 
we can make things easier or even more difficult just through how things
are organized in the popup.