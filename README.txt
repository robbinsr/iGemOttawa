I did a bit of work on the pop-up menu, I'm still working on it, just thought I'd push some of what I've done.

-So I created some buttons in the components class for the coding sequences, they're all done individually which means 
we can mix up the colors or something to add a bit of variety.

-The buttons automatically populate in the right place when a popupMenu is created. The spacing can be tweaked so if 
the buttons end up being smaller or larger we can worry about that later. Also it only adds buttons based on the parameters
given by the level.

-For some reason though the buttons aren't constantly visible. I'm not sure why this is, maybe you can look into it? As it is
all the buttons should be visible all the time, but only the most recently highlighted one is showing.

-I'll add a mouse-over event that displays a little textfield or something when you hover over a button so you can get a brief
description. 






------
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