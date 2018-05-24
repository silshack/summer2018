---
layout: post
author: kevin-kao
title: "Kevin's turtlehacks & logical turtle!"
---

This is my logical turtle exercises:
<iframe src="https://trinket.io/embed/python/488ce41b6c" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

What I was trying to do here is to create a formula for BMI. It took me for a while to get the formula right. First, I forgot 
to put `float()` when creating the BMI formula. But after the creation of formula, I felt like it's not difficult to draw 
the conditional cookies by using `if()` , `elif()`, and `else()`. I also used `try:` and `except:` to make sure the user types
an integer. All in all, my logical turtle practic was not that hard to complete. 


My another practice which is "Turtlehacks" is here:
<iframe src="https://trinket.io/embed/python/d05f49e4ed" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

My idea of making this "Turtlehacks" came from using the random number. I wanted to make the turtle move according to what
number computer gives. What I was stuck is I was not sure about how to make the turtle move on after the first try. 
Originally, I was thinking to let user try three times for the move. But it seemed that it's stopped after the first try. 
Afterwards, I figured out that I should probably repeat the `input()` two more times to get three. Therefore, the following 
code was repeated three times excpet for the number:

```
x = [80, 90, 100]
step1 = random.choice(x)

if int(step1) == 80:
  kev.forward(80)
elif int(step1) == 90:
  kev.forward(90)
elif int(step1) == 100:
  kev.forward(100)
```

I'm not sure if I can use `def:` to avoid this repetition and also to make my coding more concise. But I think I will try to 
figure it out next time!
