---
layout: posts
author: rachelanniexo
title: "Pepperoni Re-do"
---

For this assignment, I decided to make a class that prints big circles to make the crust, sauce, and cheese of my pizza. After I did this, I also made a pepperoni class that sends the circular maroon turtles to different spots on the pizza. For reference, these two trinkets are my old pizza maker and my broken pepperoni code.

<iframe src="https://trinket.io/embed/python/27437d3f3c" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

<iframe src="https://trinket.io/embed/python/ff4c956f76" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Now, instead of having all these lines to print one circle...

```
#crust
papajohn.color("tan")
papajohn.penup()
papajohn.setx(0)
papajohn.sety(-190)
papajohn.pendown()
papajohn.circle(180)
papajohn.fill(False)
```

I have one class for all three of my big circles that looks like this:

```
class RoundFood(turtle.Turtle):
  def __init__(self, color, x, y, z):
    turtle.Turtle.__init__(self)
    self.hideturtle()
    self.fill(True)
    self.color(color)
    self.goto(x, y)
    self.circle(z)
    self.fill(False)
```

And can print each one by making a RoundFood:

```
dough = RoundFood("tan", 0, -190, 180)
```

This is my pepperoni class and one out-of-class function that prints pepperoni (to the left of the pizza.

```
class Pepperoni(turtle.Turtle):
  def __init__(self, x, y):
    turtle.Turtle.__init__(self)
    self.shape("circle")
    self.color("maroon")
    self.penup()
    self.goto(x, y)

# prints pepperoni on the left of your pizza
def leftpepperoni():
  lefteroni1 = Pepperoni(-40, 100)
  lefteroni2 = Pepperoni(-100, -40)
  lefteroni1 = Pepperoni(-70, 0)
  lefteroni2 = Pepperoni(-30, 40)
  lefteroni1 = Pepperoni(-40, -100)
  lefteroni2 = Pepperoni(-100, 40)
  lefteroni1 = Pepperoni(-70, -70)
  lefteroni2 = Pepperoni(-30, -40)
```

And this is my new program, in all it's glory.

<iframe src="https://trinket.io/embed/python/cb7308dc5f?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
