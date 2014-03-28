After beginning to load sunset images in for color analysis I realized the load times were causing a delay in rendering.  To deal with this I'm altering the way images are loaded in.  The proxy now returns the top ten sunsets from the daily image search for sunsets (via a cron job running on the server).  The app will load and analyze these top ten images when it first launches and every night just after midnight thereafter while the app instance is running.  

The proxy endpoint is now here:

[Infinite-Sunset.com/top-ten-sunsets](http://Infinite-Sunset.com/top-ten-sunsets) 

I've also started organizing the code so that it's easier to read, as I believe a large part of this work (and this competition Google has going) is readable code.  Each element in the composition now has it's own function such as sun(), sky() and water().  

I'm also abandoning creating an Android native app, as the Processing IDE is difficult to troubleshoot in Android mode.  Basically, I got rid of all the compiler errors, but it still hangs telling me that it's waiting for the phone to be ready.  I don't remember this being so difficult before (loading Processing apps into Android), but things change often in open source world.  There's probably a solution, but the competition deadline is tomorrow, so I'm going to just focus on completing the piece for stand-alone desktop and web (the site looks great in Chrome mobile, so good enough eh?).

