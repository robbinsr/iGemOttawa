So the timer works, and pauses/unpauses at the right times as far as
I can tell. I fixed all the corner cases I can find. Still need to:

-Fix asthetics; font size/placement/etc
-have some sort of thing at the end of the last level that tells you
your final time/how awesome you are

Issue: 
-tweening the timer text in and out for pause/unpause doesnt quit sync
with the rest of the UI. The reason is because the buttons and such 
are all children of level, which is a child of screen handler, but the 
timer is a child of background which is at the same "tier" as screen
handler, tree-wise. So, for example, when you change screens, (or if 
you click info, which "switches screens" back to the current screen)
the timer tweens right away and the screen handler does some processing
on the next screen then removes the rest of the UI buttons. It's minor
but I don't think there's much we can do about it without things
getting really messy. I'll look into it later, it looks good enough for
now.


---------------------------------------------------------------------

-Wrote some handy debug code in main for tracking all children and
children of children, recursively. Trying to track down why resetting 
from "YouWin" causes things to screw up. Also using this code to check 
for stray instances and I'll addapt it later to look for stray event 
listeners that get added and don't get removed, because I have a feeling
there are a few.