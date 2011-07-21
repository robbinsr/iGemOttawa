Latest update:

Refactored the components and popupMenu generation. Makes much more sense now. 
Not sure what I was thinking with my original implementation, I might have 
been drunk at the time.

A new popupMenu has 5 buttons, which are then given names, etc, based 
on their type. This makes it really easy to get the proper text description.
The flow of logic is a little convoluted but it works.