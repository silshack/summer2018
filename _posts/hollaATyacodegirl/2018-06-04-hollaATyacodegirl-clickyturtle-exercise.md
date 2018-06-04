---
layout: post
author: hollaATyacodegirl
title: "Clicky Turtle Exercise"
---

<iframe src="https://trinket.io/embed/python/55537e6fce?start=result" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

In my Clicky Turtle Exercise, the screen is set up as pink initially and a hidden turtle (Sally) draws out the coordinate plane in purple. This is under
the `setup()` function in animations.py. I call the setup function and pass through my screen object `setup(myscreen)`.

Then, the user can click anywhere on the screen and Tina the Turtle will go to that location. I used conditionals to determine that
if Tina goes to quadrant I of the coordinate plane, she will draw a red polygon of varying size and shape. If Tina is asked to go to quadrant 
II, she will draw a yellow polygon. In Quadrant III, the polygons are blue, and in Quadrant IV, the polygons are green. 
I used the following conditionals within my clicky(x,y) function to change an aspect of Tina, in this case her color and the color of what she
draws, based on her location on the screen. 

```python
def clicky(x, y):
  tina.penup()
  if 0 < x < 200 and 0 < y < 200:     #Quadrant I
    tina.color('red')
  elif -200 < x < 0 and 0 < y < 200:  #Quadrant II
    tina.color('yellow')
  elif -200 < x < 0 and -200 < y < 0: #Quadrant III
    tina.color('blue')
  else:                               #Quadrant IV
    tina.color('green')
```

I reused and modified two functions I had written for a previous exercise and used them as helper functions to `clicky(x,y)`. 
`random_polygon()` is one of my favorite pieces of code 
that I have written for this class and one that I'm most proud of. I developed `random_polygon()` during my refactoring of Logical Turtle.
In its original form, the function drew polygons of varying color, varying size and varying number of sides. It was an exciting way for me
to apply functions from the random module. 
Here is the function from the Refactored Logical Turtles, then called `colorful_shape()`:

``python
def colorful_shape():
  colorlist= ['red','orange','yellow','green','blue','indigo','violet']
  tina.color(random.choice(colorlist))
  tina.pendown()
```

In it's original form, the function used random.choice() from the random module to chose a color at random from the list, colorlist. In
Clicky Turtle, I changed how Tina's color was determined. Instead of having the color be pseudorandom, I made the color dependent on Tina's
location, using the conditionals above.
Below are my two helper functions for clicky(x,y) in the Clicky Turtle Exercise. Really, `polygon(length,sides)` is a helper function to
`random_polygon()`, which is later a helper function to `clicky(x,y)`. I have to say that over time my code for random_polygon() has really
cleaned up. I'm a big fan of refactoring as it's a fun and rewarding puzzle to solve.

```python
def polygon(length,sides):
  degrees= 360/sides
  for i in range(sides):
    tina.pendown()
    tina.forward(length)
    tina.right(degrees)
    tina.penup()
  
def random_polygon():
  tina.pendown()
  polygon(random.randrange(25,100,25),random.randint(3,8))
  tina.penup()
```

I've had a lot of fun with colors when using the turtle module. I also wanted the screen to change color when the user clicked around. I had
a choice: I could either tie the screen's color change to the above elif statements, or I could have it be a pseudorandom change. 
Either way I had to put `myscreen.bgcolor()` within clicky. I decided to have the screen color change be pseudorandom and happen after the elif
statements as it was only two lines of code to add, and this way I could also incorportate a list into my exercise of Clicky Turtles:

```python
screencolor_list=['pink','indigo','gold','pale violet red','aquamarine']
myscreen.bgcolor(random.choice(screencolor_list))
```
I went to [Trinket](https://trinket.io/docs/colors) to find some more colors to add to the ones I already used. It's a lot of fun to play around with the Turtle colors.
I think playing with colors has been a characteristic of my exercises for this class.

(Although it was not part of my exercise, I left the key commands for Tina because I thought it was fun to move her around the colorful screen with the keys.) 




