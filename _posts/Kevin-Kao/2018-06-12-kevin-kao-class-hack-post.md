---
layout: post
author: kevin-kao
title: "Kevin's Class Hack"
---

I’m trying to refactor my clicky turtle by using the class function. But I’m still not familiar with the `class` function 
to be honest. I feel like it’s a little bit confusing and abstract to me. 

Here is my original trinket for clicky turtle: 

<iframe src="https://trinket.io/embed/python/73e2f7d80f" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

I was making the turtle move by clicking the screen and pressing the keys and when they arrive in the ocean, 
the animations of congratulations will be displayed. 

Here is my refactoring trinket for clicky turtle:

<iframe src="https://trinket.io/embed/python/55a23173c5" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

After using the `class` function to refactor my code, I was not able to make the turtle move by clicking. 
Here is my screenshot of my code:

```
class RunningTurtle(turtle.Turtle):
  def __int__(self, x, y, color):
    turtle.Turtle.__init__(self)
    self.shape("turtle")
    self.color = random.choice(["red", "yellow", "green", "orange", "brown"])
    self.goto(x,y)
    self.clicky()
    self.control_speed()
  
  def clicky(self, x, y):
    myscreen.tracer(0)
    self.left(90)
    self.forward(50)
    self.goto(x,y)
    self.color()
    myscreen.tracer(1)
  
  def control_speed(self):
    if float(self.ycor()) >= 125 and float(self.ycor()) <= 150:
      self.speed(1)
    elif float(self.ycor()) >= 125 and float(self.ycor()) <= 100:
      self.speed(3)
    elif tina.ycor() <= 100:
      self.speed(5)
turtle.done()

alex = RunningTurtle(0,-150)
myscreen.onclick(alex.clicky)
alex.control_speed()
```
I had a hard time finding the missing part or anything that cannot make the turtle move by clicking. 
Besides, I’m also not sure why the alex turtle did not go to (0, -150) when the game starts. 
Therefore, any feedback or comment here is appreciated.
