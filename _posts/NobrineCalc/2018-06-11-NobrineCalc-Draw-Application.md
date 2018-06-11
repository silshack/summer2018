---
layout: post
author: NobrineCalc
title: "Drawing Application Woes"
---
Looking at the application I feel the results are very basic. I found an example to build color paletes for the ui. Initially I tried to make it function through the use of a drag function so the user's motions could be captured entirely. However when I tried using the screen tracer methods to remove the animations there as no change. As a result I ended up using the goto function.
<iframe src="https://trinket.io/embed/python/53e545206c?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

``` python
class ColorPicker(Turtle):
  def __init__(self, color="red",num=0):
    Turtle.__init__(self)
    self.num = num
    self.color_name = color
    self.speed(0)
    self.shape("triangle")
    self.color("black", color)
    self.penup()
    
    # hack to register click handler to instance method
    self.onclick(lambda x, y: self.handle_click(x, y))

  def draw(self):
    self.setx(screenMinX+110+self.num*30)
    self.sety(screenMaxY - 20)
    
  def handle_click(self, x, y):
    if self.color_name == "#F9F9F9":
      brush_turtle.penup()
      brush_turtle.color("black")
    else:
      brush_turtle.pendown()
      brush_turtle.color(self.color_name)
```
      This part of the code used a method we have not gone over in class with the creation of a class. I found this as a method to create the UI I needed. However when it came to creating another for alternate brush sizes gave me trouble. I found that while I had trouble adding additional UI elements I could add colors to allow for a pseudo erasure function. Curiosly using the color white allowed this, however when a hexcode denoted a similiar shade of white the lines drawn were transparent regardless. This along with troubles figuring out mechanics of color wheels ended up slowing my progress.
