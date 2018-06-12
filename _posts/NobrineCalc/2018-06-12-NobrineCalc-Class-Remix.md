---
layout: post
author: NobrineCalc
title: "Class errors"
---
Initially I tried to create a class for dealing with the movement from my clicky turtle. I approached this by trying to create 2 classes that would handle the movement of each turtle separately. However As I worked on this I ended up finding issues with the movement being translated.
``` python
class Tmove(turtle.Turtle):
   def __init__(self):
     turtle.Turtle__init__(self)
    
   def go_left():
     return self.left(turn_amount)
    
   def go_right():
     return self.right(turn_amount)
    
   def go_forward():
     return self.forward(move_amount)
    
   def go_backward():
     return self.backward(move_amount)
    
    
 class Mmove(turtle.Turtle):
   def __init__(self):
     turtle.Turtle__init__(self)
    
   def go_left():
     return self.right(turn_amount)
   def go_right():
     return self.left(turn_amount)
   def go_forward():
     return self.backward(move_amount)
   def go_backward():
     return self.forward(move_amount)
```  
     
As a result I tried to get my class to emcompass the color change function I used in my original program. That was divided to deal with the separate turtles. However when I tried the code it kept on resulting in errors of colors being recognized. I tried to extend the turtle class, however errors in understanding the color as a string also occured. Initially it was an attribute error, then after working on it more it became a external type error
``` python
     class Colorturtle(turtle.Turtle):
  def __init__(self):
    turtle.Turtle__init(self)
  
  def colorshift(self, col):
```
As I worked on my program I simplified the startup to test my results quickly. The errors I encountered make me think that the issue is held within my extending of the turtle class as the defining of the class. The issue with recognizing color has been frustrating as well.     
     
     
     End Result:
     <iframe src="https://trinket.io/embed/python/133e4bd163?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
