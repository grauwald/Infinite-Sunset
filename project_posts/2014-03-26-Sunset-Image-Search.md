With only a few days remaining in the devArt competition (got started late...) I got a php proxy working to return a random sunset image url:

[Infinite-Sunset.com/random-sunset-image](http://Infinite-Sunset.com/random-sunset-image) 

This "endpoint" will be used to grab images for the sunset piece to find color palettes.  It actually loads locally stored JSON and grabs a random URL from it.  The JSON is updated daily at midnight by a cron job running on the server.  This prevents the collective instances of the app from ever going over the Custom Search API rate limit of 100 queries a day.  The query on the word "sunset" only looks for images results from the last day, so everyday there is the possibility of new images showing up, providing much greater variance when the work is exhibited for longer periods of time.

Next step is getting the color parsing working and applying it to the generative image.