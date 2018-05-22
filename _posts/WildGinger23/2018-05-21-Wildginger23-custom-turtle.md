---
layout: post
author: WildGinger
title: "Bennett's custom turtle: Lilypad Escapades"
---

Check out the "Lilypad Escapades", my custom turtle.

<iframe src="https://trinket.io/embed/python/6dc4891aac" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

I began with the required inputs of background color and turtle color. Then I expanded out using cirlces on different coordinates.
I used `tina.penup` and `tina.pendown` to make it so that there were no lines leading to and from the circles.
Then I wanted to fill the cirlces to make them look like lilypads, so I used `tina.fill`.


Here is an example of one circle, or "lilypad".

```python
#First pad
tina.penup()
tina.goto(50,50)
tina.pendown()
tina.fill(True)
tina.circle(30)
tina.fill(False)
