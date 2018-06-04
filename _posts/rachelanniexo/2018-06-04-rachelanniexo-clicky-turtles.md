---
layout: post
author: rachelanniexo
title: "Rachel Anne's Clicky Turtle"
---

Ever since I realized turtles could randomly change colors while in motion, I've wanted to try it myself. It reminded me of the Magic Color Scratchpads my mom used to have. I know hollaATyacodegirl (I checked who this was after making my assignment so as not to use her code) did this for her Turtlehack and I was pretty sure her turtle was a click-and-drag turtle, so I wanted to compare the way her turtle worked to a click-only or key-driven turtle.

First, and unconventionally, here is hollaATyacodegirl's Turtlehacks -  Draw the Rainbow:

<iframe src="https://trinket.io/embed/python/cd880ad1fb?start=result" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

As you can see, her turtle constantly changes colors when dragged. When drawn in wide enough swoops, it will also make the pen into cool geometric shapes.

By contrast, here is my Clicky Turtles - Magic Color Scratchpad:

<iframe src="https://trinket.io/embed/python/225ae18aaa?start=result" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

When the user uses the arrow keys, the colors do change in motion, just like hollaATyacodegirl's. However, when you click and let Tina navigate to them on her own, you can see the colors change while she moves, but when she comes to a stopping point, the entire line she's drawn is solidly-colored the last color. I think this has something to do with tina recognizing her motion over one solid line for one click event as being different for her series of motions for key events. I'm really not sure, considering holding one key will still allow her to change colors.

Anyway, like I said, I wanted to mimic my mom's Magic Color Scratchpads, which is why I set the background to black. I picked a few of my favorite colors for tina's pen color and put them in a list to be randomized. I also picked some alternate background colors, because I couldn't think of anything cooler to do on-click, and I've also been thinking a lot of how context helps us interpret things. To me, the rainbow shifting colors always reminds me of a Magic Color Scratchpad, but the different backgrounds give the piece a different mood. For my new key events, I decided new users might like to see tina on the screen so they can more easily conceptualize which way she moves and see what direction she's turning, but experienced users might prefer workin with a smaller pen tip (aka no tina), so I chose to add keys that hide and show tina.
