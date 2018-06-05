---
layout: post
author: draravindrk
title: "Aravind's Mid-Semester Reflection"
---

Coming from a healthcare background, learning coding was something very new and it turned out to be very exciting for me.
The course so far has taught me the approach to writing a code and I believe there is so much more to learn.
The assignments were very interesting and I feel that each one them made me think and learn many new coding techniques with every passing day.
Elliott always encourages to take breaks which really helped me while learning how to code.
Below is the Turtle Hack code which was actually something that I could recollect back as I was learning to code.

```
# function to return the position value for pupil based on mood
def pupilpos(mood):
  if mood == '1' :
    return 50
  elif mood == '2' :
    return 75

try:
  import turtle
  tina = turtle.Turtle()
  tina.speed(10)

  mood = input('What mood? (Enter 1 for Happy and 2 for Confused)\n')
  
  # check if user entered value within the allowed values, else raise exception
  if mood == '1' or mood == '2':
    ppos = pupilpos(mood)
  else :
    raise Exception
    ```
    
