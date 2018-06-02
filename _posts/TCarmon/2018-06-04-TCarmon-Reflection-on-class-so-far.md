---
layout: post
author: TCarmon
title: "Tia's Reflection on the class so far!"
---
**Whoa!** mid- semester reflection? This class is going by so quickly! I know summer sessions go by fast, but the amount of Python programming that we’ve learned so far has me feeling like we are going at light speed. :bullettrain_front:

## Reflection on Reflections  :thought_balloon:

In addition to learning how to write Python code, I’ve discovered that reflections are harder to write than I initially thought.  :pencil:  I typically replay conversations and situations over and over in my head searching for ways to do better the next time, so I thought the reflection writing would be a piece of cake. Turns out, I have felt like I was **rambling** on with no “real” purpose other than getting my thoughts out about a particular activity we’ve done in or outside of class.  



## Problem-Solving Strategies :wine_glass: :fries: :chocolate_bar:

Okay, okay, I admit that I have had way too many comfort foods while working late at night on my assignments. I have yet to find out how to get in my zone without it.  I have tried other things like music since that is what I do when I need to focus on a deliverable for work. However, music while writing code just frustrates me and causes me to be flustered and upset while trying to program. I’m sure I’ll eventually find my “thing”. In the meantime, I’ve got to stop with the snacks! :anguished:

Some of the problem-solving strategies that _**have**_ worked are:
1.	**Getting up**- moving around, getting a glass of water, walking around the room a couple times has helped me to reset my brain a bit then get on with my assignment.
2.	**Using resources**-  I have gone back to the Turtle basics class notes while working on several of the Turtle assignments. There’s a wealth of information in there as well as a link to the Python documentation for Turtle. The O’Reilly videos have also been a tremendous help while completing Turtle exercises.
3.	**Task list**- I typically refer back to the assignment page as my source for my task list. I have found that the instructions on the assignment page give me clear direction on what I need to do and what I should have accomplished/captured within my code. It has helped me get back on track when I get lost on what I’m supposed to do for an assignment.
4.	**Bite size probs**- breaking things down to small solvable pieces has worked well for me. It helped me when I was working on my custom and treasure Turtles. 

A problem-solving attitude that I have always had in life is determination. I’m always determined to get my program to run no matter how long it takes or what else I have to do. This can be a helpful yet hurtful attitude for me because my determination sometimes causes me to focus on one problem longer than I really should. I’ll work on fixing that!

## Parameter? Argument?? :confused:

I struggled with the functions exercises and still am a bit fuzzy on what is a parameter and what is an argument. Does it matter if I write a function that has the arguments outlined or should I just write `def function ()` and does leaving the parenthesis empty mean that anything can be passed through the function??  I get it when looking at a function that someone else has written. When it’s my time to write one, I have to stop, think to myself and try to figure out what is my aim, then proceed with writing the function and hoping I get the argument and/or parameter in the right place! I really think that the only way **I will overcome this confusion** is to keep practicing with functions and reading them back to myself in English. Once I get to that point, maybe I should find an opportunity to teach someone or at least share my knowledge about functions. 

Here’s a function that I wrote, notice that I ended up using a class resource :smiley: . In the end, I did learn that I needed to pass in the same number of arguments that I used to build the function.
```Python
#stamp tati where mouse is clicked- used class resource at this website https://docs.python.org/2/library/turtle.html#turtle.write
def mstamp (x,y):
    tati.color ("goldenrod")
    tati.stamp ()
tati.onclick(mstamp,btn=1,add=True)
```
## Things to work on
Though it may not be considered a technical or hard skill, I plan to work to improve my collaboration with fellow programmers. My first experience partnering up in class was not as easy as I would have thought it was. Partnering up to review someone’s code and then discuss the code required me to stretch beyond what I initially was comfortable with. After partnering up a second time, I learned that the first time wasn’t a fluke, I really need to work on being able to pair program, explore other’s code and talk about other’s code. I’m not quite sure exactly how to do this, maybe be more inquisitive about the code which my fellow programmer has decided to use and why will be a start for me to get better at **collaborating with fellow programmers**.  Through my first experience partnering up, I also learned that I having code that isn’t working and not knowing why it isn’t working scares me, I felt like a deer in headlights. I did not know how to suggest fixing the code so the program will run and didn’t really go beyond that. Because of this, I really missed an opportunity to grow as a programmer and to help a fellow programmer. Now that I’ve said fellow programmer a gazillion times, let’s move on to my thoughts on one of the programs I have written.

## What I’m proud of :turtle:

I am really proud of my treasure turtle and I am very glad that I took the steps required to allow myself the time to focus solely on that assignment (i.e. sending my kids to their grandparents’ house!). I usually have competing responsibilities so am limited on the amount of time which I can spend on assignments. For this one, I wanted to give it as much of my time as possible. My **treasure turtle** needs some work, my partner who reviewed my game suggested utilizing colors to help a user get to the treasure. I thought this was a great suggestion and one that I will try to implement in the future when I have some “free” time. I learned that it was fairly easy to take code another programmer wrote and edit it to fit my needs. I used the animation.py code that was already coded for congratulations and adjusted it so that I could create a similar animation if a user clicked a mine and lost the game.
```python
def blowup(a_turtle):
  a_turtle.penup()
  a_turtle.speed(10)
  a_turtle.goto(0,0)
  a_turtle.write("You Hit a Mine!", None, "center", "16pt bold")
  for i in range(100):
    random_xy = (random.randint(-200,200), random.randint(-200,200))
    random_360 = random.randint(0,360)
    random_color = (random.randint(0,255),random.randint(0,255),random.randint(0,255))
    a_turtle.color("red")
    a_turtle.goto(random_xy)
    a_turtle.stamp()
    a_turtle.seth(random_360)
```

## Conclusion :white_check_mark:

Overall, I feel that I have definitely made progress as a newbie programmer. I have bookmarked some resources that I can go to when needed. My problem-solving strategies have broadened, I’ve learned that it’s okay to take a break and come back to finish a program. It does not have to be done all at once. Finally, my lightbulb moment was learning that it is good to **keep the end user in mind** when writing a program. Though a game I create can check off the required boxes, it may not be tons of fun to play.

Thanks for reading! 

TiA :smiley:
