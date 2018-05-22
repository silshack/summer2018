---
layout: post
author: ponderm
title: "ponderm's Turtle Exercise"
---

Here's the program I'm embedding:

<iframe src="https://trinket.io/embed/python/03c2bdfdfd" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

I ran into the issue of getting a black screen when I was trying to color the background. I originally had it written as `myscreen.bgcolor("tina_background")`,
but I eventually figured out that doing this is like putting quotes around a string that already has quotes (e.g. " "green" "). Since `tina_background` is a 
variable that is input as a string value, you don't need to add the quotes.

```python
# I was unsure whether the center of the circle was placed on coordinate (0,0) or if the bottom of the circle was on coordinate (0,0)
# To find out I just put several circles right on top of each other.
tina.penup()
tina.goto(0,0)
tina.pendown()
tina.circle(5)
tina.circle(10)
tina.circle(15)
tina.circle(20)
tina.circle(25)
tina.circle(30)
tina.circle(35)
tina.circle(40)
tina.circle(45)
tina.circle(50)
# Turns out the circle is not centered around coordinate (0,0).
```

Here's an example of what the completed exercise looks like:

<img width="603" alt="screen shot 2018-05-21 at 7 53 52 pm" src="https://user-images.githubusercontent.com/39390058/40335952-84d9f116-5d34-11e8-9f38-d0fed55b7864.png">
