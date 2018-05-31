---
layout: post
author: draravindrk
title: "Aravind's Treasure Hunt Turtle!"
---
<iframe src="https://trinket.io/embed/python/87cc894c55" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
 
For the user to be able to find the treasure within the 5 pixel range may take quite a number of attempts/inputs.
In order to give the user a hint as to how close the user is to finding the treasure, I tried to use the mathematical formula which would give the user a feedback as to how close they are to the treasure. Below is the formula thatt I used.

```python
# Give the user feedback on how close they are to the treasure here:
  diff_x = user_x - treasure_x
  diff_y = user_y - treasure_y
  
  diff = pow((pow(diff_x,2) + pow(diff_y,2)),0.5)
```
