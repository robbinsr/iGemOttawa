So the plasmid should display correctly now.

In the popup class we were doing stupid things like removing all 
button children, destroying all references to them, creating new
buttons with the same positions/listeners/etc and then adding them
back as children everytime we change menus. The only difference
between the old button and the new button is the .name ...

This doesn't make sense. 

Instead, now they're all instantiated and added as children once 
(during the construction of the popupMenu), then we control them 
by changing the names, and toggling their .visible property.

The PopupMenu class is now a single persisting instance. This 
wasn't even really necessary for the plasmid changes, but it's 
alot cleaner.

Similar for the arrows, they're all instantiated and added as 
children with 0 alpha, then we just adjust the colors and tween
them in and out. This way the Plasmid class can keep track of 
it's own arrows, and we don't pass it redundant information.

There's still alot of room for refactoring though. I'll keep going on
that for a while longer tonight.