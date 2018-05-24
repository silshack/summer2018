---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Custom Turtle"
---

Check out this awesome Trinket that takes user input and draws fun shapes using Tina the Turtle!

<iframe src="https://trinket.io/embed/python/004dbec2d5?start=result" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

In the below code I had fun exploring the coordinate plane of the screen on Trinket. Tina, by default, started at point (0,0).
I wanted Tina to connect the end points of the x- and y-axes into a diamond that filled the screen. It was very useful to know that the diameter
of the screen was 200.
I could have used the penup() function of tina to not draw a line through the middle of the screen, but I actually kind of liked it in the
design!

```python
#Draw a diamond at the ends of the coordinate plane
tina.goto(200,0)
tina.stamp()
tina.goto(0,200)
tina.stamp()
tina.goto(-200,0)
tina.stamp()
tina.goto(0,-200)
tina.goto(200,0)
tina.goto(-200,0)
tina.goto(0,-200)
```

Below, I wanted to see how Tina drew a circle. Did Tina start in the center of the circle? If not, where? Turns out Tina starts at the bottom
of the circle, so a circle of diameter 200 (`tina.circle(200)`) was circumscribed in the screen. 

```python
#Draw a 200 diameter circle
tina.circle(200)

#Draw and fill a 100 diameter circle
tina.begin_fill()
tina.circle(100)
tina.end_fill()
```

Overall this was a very fun exercise. I had fun changing up the colors of tina and her screen, and also experimenting with the various 
functions in the module turtle, for example: goto(), stamp(), circle() and begin_fill()/end_fill().

I'm looking forward to learning conditionals and Turtlehack!

- Halina 
