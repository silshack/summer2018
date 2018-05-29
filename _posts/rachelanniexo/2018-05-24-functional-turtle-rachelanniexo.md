---
layout: post
author: rachelanniexo
title: "Refactoring Custom Turtles"
---
Here is my original submission for the Custom Turtles assignment.

<iframe src="https://trinket.io/embed/python/208f60779b?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

As a series of nested circles, it made a perfect choice for refactoring.

Each circle was made up of a set of commands, like so:

'''
#droplet1
circle(0,10,20)
tina.penup()
tina.setx(0)
tina.sety(-10)
tina.pendown()
tina.circle(20)
'''

I used this code to define a function that makes circles.

'''
#make circles
def circle(x,y,z):
  tina.penup()
  tina.setx(x)
  tina.sety(y)
  tina.pendown()
  tina.circle(z)
'''

From there, I called the four outer circles like so:

'''
circle(0,-10,20)
circle(0,-30,40)
circle(0,-60,70)
circle(0,-100,110)
'''

Much simpler and easier to read than the older version, and hey! it still works, as you can see here:

<iframe src="https://trinket.io/embed/python/c75fa87942?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
