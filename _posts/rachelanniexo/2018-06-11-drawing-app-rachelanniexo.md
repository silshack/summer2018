---
layout: post
author: rachelanniexo
title: "Rachel Anne's Drawing App"
---

To start my app, I first decided a mouse was necessary for the user to interact with my app and sucessfully draw. I imported turtle and created a turtle named "mousey" which will be the turtle the user uses. I made sure mousey showed up on my screen. Then, I made sure the turtle could be moved. In addition to moving for key presses and on-click events, I decided to add an on-drag feature. I did this because my sister, who is a studio art student had used my magic scratchpad trinket and was upset she couldn't drag the mouse around. I knew .ondrag() was a method, but ended up referencing the Python docs to help me properly call it, as I didn't realize it took paraameters. I ended up using turtle.goto as a parameter, which makes sense, because I want my turtle to go wherever the user drags it. As you will note, I specifically reference mousey in my code. Why? In later tests, if I called turtle.goto, the turtle that moved with the mouse was sometimes a helper turtle.

```
myscreen.ondrag(mousey.goto)
```

The next thing I did was make different modes for users to use. I determined a "normal" mode was essential, so I started by making a button maker. I was very perplexed when my buttons didn't print in a vertical line. After spending ten minutes trying to figure it out, I decided I wasn't getting anywhere by running it repeatedly in despair, so I took a ten minute break to take a walk around my apartment while listening to music. Music always helps me get unstuck, and I think stretching my legs helped, too. And within my ten minutes, I figured it out! My code was missing the last left rotation, so it was starting each line in the direction of where it ended. My final code looked like this:

```
# Define a button statement
def palette_button(turtle, color, x, y):
  turtle.speed
  turtle.color(color)
  turtle.penup()
  turtle.goto(x, y)
  turtle.fill(True)
  turtle.pendown()
  turtle.forward(10)
  turtle.left(90)
  turtle.forward(10)
  turtle.left(90)
  turtle.forward(10)
  turtle.left(90)
  turtle.forward(10)
  turtle.left(90)
  turtle.fill(False)
  turtle.penup()
```

With my button statement fixed, I tried making my first mode, normal mode. I decided I needed a plain white screen and pen colors in black and the seven colors of the rainbow. This gave me a total of 8 colors to work with. I made the following mode, calling my button mode for each button:

```
# Define normal mode
def normal_mode(screen):
  # Make normalcy, the turtle who sets up the modes
  # And hide her!
  normalcy = turtle.Turtle()
  normalcy.hideturtle()
  
  # Set the screen color
  screen.bgcolor("white")
  
  # Set up your buttons
  palette_button(normalcy, "red", 180, 180)
  palette_button(normalcy, "orange", 180, 170)
  palette_button(normalcy, "yellow", 180, 160)
  palette_button(normalcy, "green", 180, 150)
  palette_button(normalcy, "blue", 180, 140)
  palette_button(normalcy, "slate blue", 180, 130)
  palette_button(normalcy, "purple", 180, 120)
  palette_button(normalcy, "black", 180, 110)
```

I made the chalk mode next, using 8 pastel colors on a dark gray background. Once I did that, I realized it was eerily similar to my normal mode, so I refactored my code so that each mode takes up much less space. The defined statement (note that it still calls palette_button making) looks like this:

```
# Make a skeleton mode that can be filled out however you want
def this_mode(screen, bg_color, color_one, color_two, color_three, color_four, color_five, color_six, color_seven, color_eight):
  # Make normalcy, the turtle who sets up the modes
  # And hide her!
  normalcy = turtle.Turtle()
  normalcy.hideturtle()
  
  # Set the screen color
  screen.bgcolor(bg_color)
  
  # Set up your buttons
  palette_button(normalcy, color_one, 180, 180)
  palette_button(normalcy, color_two, 180, 170)
  palette_button(normalcy, color_three, 180, 160)
  palette_button(normalcy, color_four, 180, 150)
  palette_button(normalcy, color_five, 180, 140)
  palette_button(normalcy, color_six, 180, 130)
  palette_button(normalcy, color_seven, 180, 120)
  palette_button(normalcy, color_eight, 180, 110)
```

And then each mode can be called in a ONE LINE! Like so:

```
this_mode(canvas, "gray", "pink", "peach puff", "khaki", "pale green", "powder blue", "light sky blue", "plum", "white"
```

Next, I decided to make something that would satisfy the requirement of allowing "the user to select a drawing mode that changes the program’s repsonse to clicks and/or keys." Since it's June (Pride month!), I decided to make a fun module that prints pride flags with the press of a key. It can print six pride flags and travel to wherever the user clicks without leaving a line. Luckily, these flags have a lot of uniform lines, so it was easy to refactor my code and keep it tidy. This function takes three parameters and returns one stripe of a flag:

```
  # This refactored function prints each individual stripe of a pride flag
  def flag_stripe(turtle, stripe_color, stripe_height):
    turtle.hideturtle()
    turtle.color(stripe_color)
    turtle.fill(True)
    turtle.forward(120)
    turtle.right(90)
    turtle.forward(stripe_height)
    turtle.right(90)
    turtle.forward(120)
    turtle.right(90)
    turtle.forward(stripe_height)
    turtle.right(180)
    turtle.forward(stripe_height)
    turtle.left(90)
    turtle.fill(False)
```
Thank heavens I didn't have to do that for each stripe of every flag! To keep the flags uniform in size,  I determined the LCM (60) based off the numbers of stripes each one has (3, 4, 5, 6), Then I made each  flag have a proportional width of 120. The height of each stripe was easy to figure out for flags whose stripes were all the same height, just divide 60 by the number of stripes! Here's what it looks like when printing the bisexual pride flag, which has three stripes that are not uniform:

```
  # Prints the bisexual pride flag 
  def bi_flag():
    flag_stripe(pride, "deep pink", 24)
    flag_stripe(pride, "dark orchid", 12)
    flag_stripe(pride, "medium blue", 24)
```

Next, I decided to work on Starry Night, which makes constellations. On each click, the pen travels to the coordinates... to be continued!

<iframe src="https://trinket.io/embed/python/65f7eabbef" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
