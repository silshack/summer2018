---
layout: post
author: kevin-kao
title: "Kevin made a custom turtle"
---
I've just completed my custom turtle! Please see the embedded turtle:
<iframe src="https://trinket.io/embed/python/c9c62bb948" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>


Through the exercises of `input()` function, I got better understanding of how it works. Therefore, from this in-class exercise, 
I was trying to apply it. First of all, I made a name for the backgroud color by using the `input()` function and stored it. 
Like this:
```
tina_bgcolor = input("What color is Tina's background?")
```
After that, I recalled it into the formula of background color, like that:
```
screen = turtle.Screen()
screen.bgcolor(tina_bgcolor)
```
That looks pretty much successful! So the way to do the turtle's color is the same.

What I was stuck for a while is that I had no idea about how to **fill** my drawing into the assigned color.
I've tried many times and it only turned out that the turtle's path had color. After asking Elliott about my confusion, 
I realized that I should put `tina.fill(True)` in the beginning to make sure the turtle is going to fill the color.
After finishing the turtle, I should put `tina.fill(False)` to finish the filling. 
Although the place I stuck was not today's key points, which is `input()`, I still feel that this is really important to me
since I have spent like 20 minutes trying to figure it out but it was still not working in the end. Asking someone else for
help is always easy to clarify the logic that I might be confused about.

