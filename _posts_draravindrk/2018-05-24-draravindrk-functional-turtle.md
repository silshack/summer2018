---
layout: post
authorL draravindrk
title: "Aravind's Functional Turtle"
---
<iframe src="https://trinket.io/embed/python/da8cbd3c5c" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Here, I used my existing logical turtle and added a functinal part to it.
I embedded the following code into the logical turtle to display the grade based on the score.

```python
def computegrade(score):
  if score >= 9 :
    return 'A'
  elif score >= 7 :
    return 'B'
  elif score >= 5 :
    return 'C'
  elif score >= 3 :
    return 'D'
  elif score < 1 :
    return 'F'
```
