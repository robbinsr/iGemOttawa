A few changes:

-Added a Component class, we'll define all the components here, including their buttons, should keep things tidy.

-Added a PopupMenu class that will appear when you click on a button from the level interface. 
	-I added a couple buttons and tested it, works fine. 
	
-The general flow of logic for the popup:
	-Clicking a button on the bottom menu triggers the popupFunction, calls the Components class and gets an array of components for that type
	-Check that no popup menus already exist, if so remove it
	-Create new popup menu and pass the components array into it. The PopupMenu class will handle populating itself with the array of buttons. 
	-While populating itself, it'll grey out unavaible choices


As usual my intermediate programming art is THE BEST. 



Future(as in possibly tommorow, or tonight if i can't sleep):
	-mock up some shitty component buttons with wonderful mspaint skills.

	-the Level# classes will define wich components are available (not greyed out) by supplying an array during construction

It should be okay for the Level# class to define up to which button to render.
	-ex: Level1 (1,0,0,0,0,0,0), when being populated the PopupMenu will render one functional button, then render 19 greyed out, unclickable components. 