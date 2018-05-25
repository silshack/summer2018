---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Functional Turtle exercise"
---

Here is my original logistical turtle exercise:

<iframe src="https://trinket.io/embed/python/ad256b30f5?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

I was having Tina the Turtle form either 1/3 of a hexagon, or a hit-or-miss triangle, or a circle. Turtle already has a 'circle()' function,
but I was struggling to put together complete polygons...

Until, I learned functions! I was very proud of myself when I created the below function `polygon()` which takes two parameters, `length`
and `sides`. `Length` is how long each side will be in # of pixels, `sides` is the number of sides of the polygon. This is certainly 
the part of the code that I am most proud of.
```python
def polygon(length,sides):
  degrees= 360/sides
  for i in range(sides):
    tina.pendown()
    tina.forward(length)
    tina.right(degrees)
  tina.penup()
```
I had to rethink the relationship between the number of sides a polygon has and the number of degrees Tina needed to turn before drawing 
the next side. Once I figured that out, it felt like a lightbulb went off! I was so excited that by passing different arguments into this 
polygon function, I could draw ALL KINDS OF POLYGONS!: triangles, squares, hexagons, you name it! I could have just had my refractored
program draw different pseudorandom polygons of different size, but since my original Logical Turtles program drew circles, I kept the 
circle function.
Later, I looked at the Turtle documentation and saw that program already has the built-in function `begin_poly()`, `end_poly()`, and `get_poly()`.
I still don't fully understand how these built-in functions work together, but I will work on that. Also, apparently, the steps of the
`circle()` function can be modified to draw polygons. It's cool that there are many ways to accomplish a task in Python! 

Here is the full code of my Refactored Logical Turtle program:

<iframe src="https://trinket.io/embed/python/f5364b2679" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

The program now draws complete, and colorful, polygons and circles of various size. 
It was much easier to improve/add on to the program once I used functions. Instead of (attempting) to draw a different polygon based on
what number a range() function returned, I simplified this part of the code:
```python
for i in range(1000):
  if i%3 == 0:  #make a colorful circle
    colorful_circle()
  else: #random colorful shape
    colorful_shape()
```

If the pseudorandom number i in range(1000) was divisible by 3, a colorful circle is drawn of varying size. If the number is not divisible
by 3, a colorful polygon of varying sides is drawn!
The pseudorandomness of type and size of polygon I accomplished using the random module. For example, below, in my `colorful_circle()` function:
```python
def colorful_shape():
  colorlist= ['red','orange','yellow','green','blue','indigo','violet']
  tina.color(random.choice(colorlist))
  tina.pendown()
  polygon(random.randrange(25,200,25),random.randint(3,8))
  tina.right(random.randrange(30,360,30))
  tina.penup()
  tina.forward(random.randrange(50,150,25))
To draw different types and sizes of polygon I wrote the following: `polygon(random.randrange(25,200,25),random.randint(3,8))`. I randomized
the length of each side as a value between 25 and 200 (half the width of the Trinket screen) with steps of 25. I randomized how many sides
the polygon was going to have by using the `random.randint()` function giving a range from 3 to 8 (I could do more sides but the shapes got
really big!). 
As seen above, I used the `random.choice()` function to randomly assign Tina a color from ROYGBIV before drawing a new polygon (or circle).
This was a more elegant solution than what I had in Logical Turtle, which was based on whether the i in range(10000) was divisible by a certain
number, a new color AND type of polygon was spat out. Color and type of polygon were linked in Logical Turtle, but are not in Functional Turtle.

One thing I am can't figure out  is why I can't return Tina to the origin if she wanders outside of the screen. The code I've posted
below doesn't work:
```python
(x,y)=tina.pos()
print x,y
if x > 200 or y > 200:
  reset_tina()
if x < -200 or y < -200:
  reset_tina()
```
I think `(x,y)=tina.pos()` isn't working. I will continue to work on that after this post. I thought this bit of code was working in Logical
Turtle but apparently it was not.

Overall, I know this Functional Turtle is not a true or perfect refactoring, but I assert that with functions I really was able to accomplish
what I had originally set out to in Logical Turtle, but had not completed. I hope this is acceptable. The Logical Turtle final result was pretty,
but the code was a real mess!

