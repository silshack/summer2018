---
layout: post
author: TCarmon
title: Tia's Treasure Hunt Turtle
---
This assignment took me several hours to complete. The most difficult part to me was writing the portion of the program that tells the interpreter to determine the distance between Tina and the treasure then display a message. I found programming within the `while` loop was confusing, at times I was having difficulty identifying where I should indent and etc. 

**Without further ado, here’s my treasure turtle. **
<iframe src="https://trinket.io/embed/python/8632f456d6" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Originally, I was trying to use a function to check the location of each turtle then compare the distance, if the distance is outside of the boundaries of the specified radius, 5, it was to return `still going`. The code I used for this function was tailored from one of the video chapters I watched in Hauser’s “PYTHON GAME DEVELOPMENT FOR BEGINNERS”
*Here’s the function that I was trying to write* I will try to figure out what I was doing wrong so that I can use a function for this purpose in the future.
```
def check_location (tina, treasure,radius = 5):
      print "Checking location"
      still_going = True
      user_has_won = False
      xbounds = (tina.xcor()-5, tina.xcor() + 5)
      ybounds = (tina.ycor()-5, tina.ycor() + 5)
      x, y = treasure.pos()
      check_x = x > min(xbounds) and x < max(xbounds)
      check_y = y > min(ybounds) and y < max(ybounds)
      if check_x and check_y <=5:
        return user_has_won
        
      else:
        return still_going
```
Here’s what I ended up using to determine Tina’s distance from the treasure. I found `distance()`  within the python library that is linked from the Turtle basics assignment page.
```
if tina.distance(treasure) <=5.0:
    user_has_won = True
```
The parts which I did not have trouble with were:
 * Identifying what to write in order to have Tina turtle move according to user input
*  Making the treasure turtle
*  Hiding the treasure turtle
*  Setting up on screen click

One thing I learned during this assignment was that I could not have both the on screen click turned on with the functionality for the user input and win the game (at least the way I programmed my logical statement). I could have both on and begin to click the screen after I first moved the turtle using the inputs but, I was never able to trigger the “You Win” animation when both were on. Took me over an hour to figure this out. I figured this out by commenting out the input and running the program, then commenting out the on screen click and running the program.  For submission, I decided to comment out the user input because, as a user, I would prefer to click around on the screen to find treasure rather than continuing to input numbers. The code I used to activate the on screen click was also inspired by one of the video chapters I watched in Hauser’s “PYTHON GAME DEVELOPMENT FOR BEGINNERS”
```
#Allow user to click screen to move Tina
  def on_screen_click(x, y):
      our_screen.tracer(0)
      tina.goto(x, y)
      our_screen.tracer(1)
  our_screen.onclick (on_screen_click)
```
Since we had a long weekend, I took a stab at adding a mine and it seems to be working!

Tia :smiley:
