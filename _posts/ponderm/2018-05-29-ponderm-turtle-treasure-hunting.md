---
layout: post
author: ponderm
title: "Treasure Hunt Turtle Exercise"
---

# Treasure Hunt Time!

## Reflection

Throughout coding for this assignment, some parts were more complex and difficult to figure out than others. I started by doing the basics to create the framework for the program and get the bare minimum to work.  The next step, I was trying different ways to define what is 5 pixels away. I decided that 5 pixels means 5 pixels directly away, which can be determined using the Pythagorean Theorem. 

#### Code for determining whether the user is 5 pixels away from the treasure or not
```
  # Determining if user_x and user_y are within 5 pixels of the computer value
  dif1 = abs(user_x - treasure_x)
  dif2 = abs(user_y - treasure_y)
  dif3 = float(math.sqrt(dif1**2 + dif2**2)) # using the Pythagorean theorem to 
  # get the 5 pixels limit. This also helps for the next part because we only have to
  # worry about one number instead of two
```

After running the code a few times, I realized that finding the hidden treasure was really challenging - there are very few numbers that would fall within this 5 pixel area. To counteract that, I modified the feedback so that there were more levels of how close you were. I initially started with three or four different ranges at which you would receive feedback. I expanded it to eight ranges of different feedback.

In addition to getting the basics covered, I also tried to follow along with the videos from today's homework to figure out how to have Tina respond to click events. I was able to get the click function to work, but ultimately was unsuccessful because I couldn't figure out how to store the x and y coordinates of the user's click as variables to incorporate it into the feedback part of the loop. 

### Check out the Trinket!

<iframe src="https://trinket.io/embed/python/84f80e1436?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
