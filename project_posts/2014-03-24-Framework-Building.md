Part of the piece Infinite Sunset is the ability to view it in various contexts.  I purchased the domain [infinite-sunset.com](http://infinite-sunset.com) to host the web rendering.  The site is simply the original sketch exported to processing.js combined with a bit of jQuery to get fullscreen scaling on the window resize event. 

I also dug through some personal photos to find a couple sunset images for reference.  One of them is from a natural swimming hole in  Kauai called Queen's Bath, the other, also setting into the Pacific was shot in the northern part of Big Sur:

![Sunset, Queen's Bath, Kauai](../project_images/sunset-Queens-Bath-Kauai.JPG)

![Sunset, Big Sur, California](../project_images/sunset-Big-Sur.JPG)


I also began the process of getting JSON formatted image results from the Google Custom Search API.  Rather than attempting to parse the JSON on the client side I'm planning on creating a proxy at the infinite-sunset.com domain written in PHP.  The main reason for this is JSON parsing is easier in PHP than it is Java (and hence Processing), and JSON parsing is not achieved the same way between the Processing variants (Java, JS and Android).  The piece, conceptually, is meant to use only basic Processing methods and properties to form the infinitely changing sunset image.  It's part of the zen of it.  The proxy will return a simple text string with the URL of a random image.  Beyond that the proxy will prevent the collective instances of the software from going over the (free) rate-limits set by the Custom Search API

The client software (the artwork) will then grab that image and parse color information from it.  The color parsing will also be very simple, by simply resizing the image to be one pixel wide the built-in resizing methods will do the color averaging for me and provide a one dimensional array of color values.  The only other addition to this might be to find the brightest pixel in the image first (prior to resizing), which will then become the basis of the sun color itself.