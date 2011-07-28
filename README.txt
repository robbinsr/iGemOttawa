First commit for the vector drawing:

It's about half done, I need to implement the actual drawing part. 
Believe it or not it's actually quite complicated, "circular" 
curves don't actually exist in as3, only parabolic bezier curves.
But if you cut the circular curve down into enough segments (I'm
just using 4) it approximates to a circular curve. I have it all
laid out, I'll work on it more tonight and possibly finish it off
tommorow. 

Hopefully I can control the thickness of the curve and make it 
wide enough, otherwise I'm going to have to hack together some 
sort of double curve with a fill between.