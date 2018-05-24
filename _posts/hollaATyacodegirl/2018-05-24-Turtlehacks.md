---
layout: post
author: hollaAtyacodegirl
title: "Turtlehacks: Draw the Rainbow using Turtle"
---

[Turtlehacks: Draw the Rainbow using Turtle](https://trinket.io/python/cd880ad1fb)

This course has taught me something I had long suspected about how I learn. I've realized that I am a lot more comfortable when I am given a problem to 
solve using code, as in the Chapter exercises, and I am uncomfortable when given creative license to do 'anything,' as in the project 
Turtlehacks. I realized I needed to break down any fun ideas I had into do-able steps so that the liberty of 'doing something cool' did
not overwhelm or paralyze me. 
I had the idea to have Tina the Turtle draw pyschedelic designs as the user moved the cursor. So I broke down my project into two steps:

1) have Tina follow cursor
2) have Tina draw a rainbow line

Interestingly, I solved step 2 before I solved step 1, which showed me the value of breaking down a project into multiple, do-able
steps so as not to get stuck at the very beginning! 

Step 1 was frustrating me. I could find documentation online on how to have Tina move to where the user clicked on the screen, see below:
```python
screen = turtle.Screen()
screen.onscreenclick(tina.goto)
```
However, I wanted Tina to not only move in straight lines from one point to another, but also be able to draw curved lines. I needed 
another solution. 
I found the function `ondrag()` referenced many times on various forums, and found its proper documentation at [Python Software Foundation](https://docs.python.org/2/library/turtle.html#turtle.ondrag).
(Python Software Foundation seems like an excellent source that I will be returning to again and again. At that link they have the full 
documentation of the turtle module.) The function `ondrag()` made it so that the user could drag Tina across the screen, leaving 
handdrawings. I tried adding the `mainloop()` function after ondrag() to see what a loop would do. Miraculously, now, Tina follows
the cursor even without the user clicking on Tina. I will admit I still don't fully understand what `mainloop()` does, or how the sequence
of `ondrag()`and `mainloop()` causes Tina to follow the cursor, but I will bring
these questions to class. I will also admit that there are many artifacts left when the user moves the cursor very quickly. While they are
artifacts, I actually think they look quite cool! 
See code below:
```python
tina.ondrag(tina.goto) #click and drags Tina
tina.mainloop() #when added, Tina follows cursor
```

For step 2, I wanted Tina to draw a rainbow line. This meant a specific sequence of colors: ROYGBIV. I created a list of the colors in that
order, and wanted to loop through that list as long as the program ran. I still don't know how to create an infinite loop, or if that's even 
possible in Python. My solution was the following:
```python
color_list= ['red','orange','yellow','green','blue','indigo','violet']
for i in range(10000):
  for color in color_list:
    tina.color(color)
```
I iterated through the numbers 0 through 10,000, and for each new number Tina changed colors in the order of ROYGBIV. If I didn't iterate
10,000 times, Tina would stop changing colors when she ran through the list once. 
I wanted to include the random module in step 2, so originally I had the following code:
```python
color_list= ['red','orange','yellow','green','blue','indigo','violet']
random.choice(color_list)
```
However, if I iterated through this, this meant that Tina would draw in random colors from this list, and not in the sequence ROYGBIV, which
was my aim. So I chose not to use the random module for step 2. 

In the end, I used `for` loops in my code, and also iterated using the range() function that I learned about in Chapter 4. I wanted to 
incorportate the random module into my code, but in the end decided not to. I also learned about new turtle functions, including onscreenclick(),
ondrag(), and mainloop().
I have yet to write my own functions for turtle, but am excited to do so in the next lesson 'Functional Turtles'. 



