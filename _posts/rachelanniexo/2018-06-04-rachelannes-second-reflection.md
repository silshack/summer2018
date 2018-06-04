---
layout: post
author: rachelanniexo
title: "Rachel Anne's Mid-Semester Reflection"
---

Wow! I can't believe this small amount of time has passed and we're halfway through the class, or that I've managed to learn as much as I have in such a short amount of time.

**What’s a lightbulb that has gone on for you?**

I initially had feedback on assignments that I was really explicit with my users, which excited me because I want to work in UX. This was for text-based systems that take variables. In contrast, I've learned that I need to pay more attention to my colorful/spatially-oriented feedback is not the strongest.

```
#Give the user feedback on how close they are to the treasure here:]
warmth_x = coordinate_x - treasure_x
warmth_y = coordinate_y - treasure_y
if warmth_x >= 100 or warmth_y >= 100:
  tina.color("blue")
elif warmth_x >= 50 or warmth_y >= 500:
  tina.color("yellow")
elif warmth_x > 5 or warmth_y > 5:
  tina.color("red")
else:
  # If the user is within 5 pixels of the treasure, they win!
```

As the above snippet of my code from our treasure assignment shows, I gave feedback purely through color, incorrectly making the assumption that everyone who interacted with my program would recognize red as meaning "red hot" and blue as a representive of ice/"ice cold" to denote proximity to the treasure. Getting peer feedback helped me recognize this was not the case and while certain visual cues are helpful, they may still rely on explanation.

**Describe some confusion you’ve experienced. Did it help you learn?**

Unfortunately, the problem I'm about to describe has not helped me learn... YET, but I'm determined to hack away at it and see if I can't get things to work... Basically I've had two programs with try/except statements that just. don't. work!!! The first was in my turtehack, for which I couldn't get the pepperoni to work, so it's currently living in it's own trinket until I get it fixed. The other, smaller piece was for our Computegrade exercise and is posted below. No matter what I do, it tells me to enter my grade as a decimal value between 0 and 1.0; I'm extremely frustrated with it.

```
try:
  grade = float(score)
  
  if grade > 1.0:
    print("Error, please enter your grade as a decimal value of 1.0 or less.") 

  else:
    
    def computegrade(grade):
      if grade >= 0.9:
        print("You made an A")
      elif grade >=  0.8:
        print("You made a B")
      elif grade >=  0.7:
        print("You made a C")
      elif grade >=  0.6:
        print("You made a D")
      else:
        print("You made an F")
        
    computegrade()

except:
  print("Error, please enter your grade as a decimal value of 1.0 or less.") 
```

**What’s still fuzzy for you? What will you do to make sure you can resolve your fuzziness?**

I think the thing that's fuzziest for me right now is just keeping track of all the vocabulary. I definitely feel like I more or less understand things, which is vastly different from my last experience taking a programming course over the summer, but I could be doing a better job of memorizing the terms and the pieces of code we use frequently. I'll make a quizlet of terms to study and resolve myself not to copy and paste anything I code. After all, if I'm copy/pasting, I could just refactor my code. 


**What problem solving strategies have been working for you?**

Making lists (not Lists = [ ], but rather commented out lists) really helps me keep track of my code. If I'm working from scratch, I'll make myself a list of what I want the program to do and then try to fill out each part of it. It makes it easier for me to step away from my code and know exactly where I was when I left off. I like to leave these pretty general so I have a lot of leeway for how I approach the problem later. I also started using the separate trinkets for work I had difficulty with, so I can inspect it on it's own and turn in functional programs that may not have as many frills as I want them to have.
