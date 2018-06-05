---
layout: post
author: TCarmon
title: "Tia's Clicky Turtle Reflection"
---

It was difficult figuring out what to do for this assignment, I had a hard time thinking of a game to create. I was going to try to create a few turtles and try to do something Pac Man like. When I was thinking through how I could actually execute this, I decided that may be too advanced for me. In my lack of having an aha moment for a great game idea, I decided to write a program for a clicky turtle drawing app. 

### Wins

It’s working! I didn’t have many automatic wins in creating this one. I do much better with the assignments that have specific instruction as to what the outcome should be. Therefore, I am considering the fact that I learned this about myself as a win. I should not be a video game designer, I’m happy to code something to specifications but would not prefer to have to think something up then create it! Everything you see within my code is from trial and error. Even my use of the starter code. I moved things around and ran my program until I came out with this final outcome.

### Difficulties

I created a function that had the turtle reset if a user presses the “r” key.  The function worked however, once this happened, the turtle would not go back to changing colors with the mouse click. I figured that a while loop may be able to handle this. My thinking was that a while loop could have the program go back to the set-up after a user resets the game. When I ran my while loop, I ended up with this psychedelic looking turtle that was rapidly changing colors. While I was thinking of what to do, I moved the mouse across the screen and decided the headache inducing psychedelic turtle actually created great abstract art :joy: check it out and let me know what you all think!
 

In the end, I used the `.clear ()` rather than `.reset ()`  the `.clear ()` allowed the user to clear the screen and did not remove the clicky functionality. 

![Screenshot of crazy turtle](https://user-images.githubusercontent.com/39390067/40945346-6a95bd1a-6826-11e8-9120-2abf5c9a27a2.png) 

Another difficulty I had was in using `. setup () `, I felt like I wasn’t able to fully explore the capabilities in setting up the screen because I was creating a drawing app. I did create the ability for the screen to be black or white with the press if the “b” or “w” keys, the code is below. I first defined a function to make a black screen and a white screen. I went with these colors because the color choices in the colors list for Tina Turtle would look the best on a white or black background.
```
myscreen.onkey( black_screen, "b")
myscreen.onkey( white_screen, "w")
```
### Here’s my clicky turtle drawing app
<iframe src="https://trinket.io/embed/python/f7d1f17a5d?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Thanks for reading!
TiA :smiley:
