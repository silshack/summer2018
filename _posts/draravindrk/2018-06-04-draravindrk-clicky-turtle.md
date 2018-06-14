---
layout: post
author: draravindrk
title: "Aravind's Clicky Turtle!"
---

Here is my Clicky Turtle. I tried to create two zones for turtle to pick colors when the turtle is in the zone's proximity,
and one zone which restricts the turtle to it's inner teritory.

I have used the helper function to restrict tina to the inner zone for which I have used the following code.

```python
def helper(x,y):
  if y >= 100:
    y = 100
  if y <= -100:
    y = -100
  if x >= 100:
    x = 100
  if x <= -100:
    x = -100
  return(x,y)
```

Below is the link to my Clicky Turtle on Trinket:

<iframe src="https://trinket.io/embed/python/71ecc67520" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
