---
layout: post
author: TCarmon
title: "Tia's Custom Turtle"
---

Here's my trinket with user input.
<iframe src="https://trinket.io/embed/python/e81b01dceb?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Took me a few minutes to realize that I had to program the user input for bg bolor as str. Here's the code I used
```
#Ask what color user would like Tina to be
usercolor = input("What color would you like?")
print
#change bg color-inspired by classmate's before picture
myscreen = turtle.Screen()
myscreen.bgcolor (str (usercolor))
```
Added some more cirles, used penup and pendown to avoid having lines all over the screen
```
#Add more circles
tina.penup ()
tina.goto (-75,90)
tina.pendown ()
tina.color ("blue")
tina.circle (20)

tina.penup ()
tina.goto (75,-90)
tina.pendown ()
tina.color ("pink")
tina.circle (30)
```
Thanks for checking out my custom turtle!
