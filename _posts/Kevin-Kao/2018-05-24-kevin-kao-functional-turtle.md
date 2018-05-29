---
layout: post
author: kevin-kao
title: "Kevin's functional turtle"
---
This is my original logical turtle exercise:

<iframe src="https://trinket.io/embed/python/488ce41b6c" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

What I was trying to do is to refactor the original one and make it more concise and clearer.
Here is what I've improved:

<iframe src="https://trinket.io/embed/python/c953b345a4" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

There were a couples of circles that I drew. I tried to use `def:` to reduce the redundant part, like this:
```
def draw_circle(x, y):
  kev.fill(True)
  kev.penup()
  location = kev.goto(x, y)
  kev.pendown()
  kev.circle(30)
  kev.color("chocolate")
  kev.fill(False)
  return location
 ```
Besides, I also replaced the following with `def:` 
```
kev.penup()
kev.goto(0, -50)
```
By doing so, I reduced the repetition again.

In the end, quite a few codes were replaced by `def:`. This can definitely turn my coding easier to understand 
within a short time. I think `def:` is quite useful and very powerful. I can build up the new function and create what I want. 
This is incredible!
 
 
 
