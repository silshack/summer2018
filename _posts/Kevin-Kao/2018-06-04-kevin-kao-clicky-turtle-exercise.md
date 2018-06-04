---
layout: post
author: kevin-kao 
title: "Kevin's clicky turtle"
---

Here is my embedded clicky turtle exercise:
<iframe src="https://trinket.io/embed/python/73e2f7d80f" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

First, for the setup screen, I decided to make a screen that contains land and ocean. It took me a long time to get it down 
since I was stuck in a place. I intended to also make turtle move to the lower place to start the game. But I realized that 
I did not need to do that. The reason is that I was only doing the screen which is like background. Therefore, I do not need 
to set up the turtle’s place. After I realized that, I felt that it’s not difficult to set up the screen, which is basically 
just like the previous assignment. 

Here is my screen setup:
```
def setup(screen):
  screen.bgcolor("lightgrey")
  # Use sally to set up your screen
  sally = turtle.Turtle()
  # Hide her since she's a setupper
  sally.hideturtle()
  sally.color("blue")
  sally.penup()
  sally.goto(0,-50)
  sally.write("Tina wants to be back to ocean!", None, "center", "12pt bold")
  time.sleep(2)
  sally.clear()
  sally.write("Let's help her!", None, "center", "12pt bold")
  time.sleep(2)
  sally.clear()
  sally.goto(0,-170)
  sally.write("You can only use the right key, left key or clicks to move!", None, "center", "12pt bold")
  sally.speed(0)
  sally.penup()
  sally.goto(-201,150)
  sally.fill(True)
  sally.pendown()
  sally.goto(201,150)
  sally.goto(201,201)
  sally.goto(-201,201)
  sally.goto(-201,150)
  sally.fill(False)
  sally.hideturtle()
```

I created a blue rectangle for ocean which is the place the turtle should try to get there in the end. 
I also created the speed control for the user. 
``` 
def control_speed():
  if float(tina.ycor()) >= 125 and float(tina.ycor()) <= 150:
    tina.speed(1)
  elif float(tina.ycor()) >= 125 and tina.ycor() <= 100:
    tina.speed(3)
  elif tina.ycor() <= 100:
    tina.speed(5)
```
I tried to control the turtle’s speed by using `if` function. When the turtle gets closer to the destination, 
the speed would be slower, and vice versa. As I thought of this code, I actually looked up some information on the Google. 
The thing is that I wanted to make the control of speed for turtle and that depends on the **y coordinate**. 
`tina.ycor()` can solve this problem. The computer would print out the string of the number for y coordinate and 
I just need to make it as a float so that I could compare the number. 

Another point worth mentioning is that I also created a `while:` loop to print out some information for the user 
depending on how close the turtle is to the destination. This actually took me some time to review the materials about 
how to use the loop to make it happen. All in all, I learned how to create the clicky turtle and key pressing turtle from 
this assignment. 
 



