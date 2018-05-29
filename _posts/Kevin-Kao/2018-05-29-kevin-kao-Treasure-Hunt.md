---
layout: post
author: kevin-kao
title: "Kevin's Treasure Hunt"
---

Here is my embedded Treasure Hunt:
<iframe src="https://trinket.io/embed/python/6d3bc031e8" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

When I first saw the incomplete code, I was a little bit confused about what I had to do for this assignment. 
There's a main.py and a animations.py. I went through all the coding and realized that there's some missing place that I had 
to fill in. animations.py seemed to be complete so what I had to do is just follow the instructions and try to complete it.

I was a little bit stuck when I saw:
```
still_going = True
user_has_won = False
```
I'm not sure what is that for. It seemed to be something related to the loop which I may learn in the future.
Therefore, I just left it as it was.

The other moment when I was stuck was handling a bad input. Here is my code:
```
  try:
    test_x = int(user_x) 
    test_y = int(user_y) 
  except:
    print("Please enter the integer")
    
  if test_x >= 100 or test_x <= -100: 
    print("Please enter an integer between -100 and 100 for X coordinate")
  
  if test_y >= 100 or test_y <= -100:
    print("Please enter an integer between -100 and 100 for Y coordinate")
 ```
 I've divided the bad input into two parts: not entering an integer and entering the wrong number (beyond 100 or below 100).
 For the former one, I created a `try:` `except:` function. For the latter one, I created a `if` function.
 I think that might make sense because two of them satisfied the bad input at the same time.
 
 The last important place that I've filled in is setting the `if` function. 
 I changeed the turtle’s Color, changed the Screen’s background color, wrote a message to the screen for the feedback to the user.
 This part is not that hard and pretty straightford because we have done quite a few `if:`, `elif:`, `else:` practices.
 
 However, I am still not sure about how to create the click events. I've tried several times but in vain. Maybe I will figure
 it out in the future.

