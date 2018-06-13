---
layout: post
author: draravindrk
title: "Aravind's Class Hack!"
---
For this exercise, I have used my previous "Turtle Hack" program where I was drawing a face using turtle.
I looked at my previous code and found that a certain set of commands were repeating - because most the elements of the face were circles of different radii and color.
When creating a new sub-class of turtle, which I have named "NewAgeTurtle", I have defined a function "DrawCircle" which performs the repetitive commands.


This is the Class definition that I have used.

```python
class NewAgeTurtle(turtle.Turtle):
  def __init__(self):
    turtle.Turtle.__init__(self)
  
  def DrawCircle(self,x,y,col,rad,deg):
    self.penup()
    self.goto(x,y)
    self.pendown()
    self.fillcolor(col)
    self.fill(True)
    self.circle(rad,deg)
    self.fill(False)
```

Below is the link to the Trinket - "Class Hack!"

<iframe src="https://trinket.io/embed/python/f279a3b857" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
