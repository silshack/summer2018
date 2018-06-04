---
layout: post
author: NobrineCalc
title: Class Reflection
---

When I first signed up for this class I wasn't too sure how'd I take to python. I learned some of Java so I had an understanding of some of the initial concepts. However working through the class I have come to see that I have a problem in my fundamentals in deciding what action to undertake to accomplish a goal. Another problem I'm running into is an issue of my syntax as correct indexing is exceedingly vital to the code in python rather than a problem of readibility. This is something that I have come to accept as it teaches me proper syntax and form at once. A lightbulb moment I've had comes from seeing how other people code. Just talking to others gives me a better understanding of how they though of engaging an action and the difference between my direction and their own. I feel that my clicky turtle for example shows growth from my past.It seems the best problem solving strategy for me is to think about what I want to accomplish in the code in order to determine what path I should take. Learning these methods and designs help with this.
'''python
import turtle, random
from animations import setup
# I got the idea to use random colors from this code: https://trinket.io/python/f0a2314bf3
tina = turtle.Turtle()
tina.shape("turtle")
ed = turtle.Turtle()
ed.shape("turtle")
colors = ["red","green","blue","orange","purple","pink","yellow"]
myscreen = turtle.Screen()


  
#start of my setup function
def setup(myscreen):
  myscreen.bgcolor(input('Please input designated bg color')) 
  tina.color(input('Type a starting color for Tina'))
  ed.color(input('Type a starting color for Ed'))
  
# This calls your setup function and passes in your screen:
setup(myscreen)

# Define at least one helper function here:
# def helper(args):
#   blah blah
# I'll make a helper function to iniate changes to the background and the turtles as well

def colorshift1(myscreen):
  color = random.choice(colors)
  myscreen.bgcolor(color) 
  
def colorshift2():
  color = random.choice(colors)
  tina.color(color)
  
def colorshift3():
  color = random.choice(colors)
  ed.color(color)


# Your clicky function (must have x and y as parameters):
# I added tracer to reduce the artifacting. It ended up removing Tina's traveling animation though  
def clicky(x, y):
  myscreen.tracer(0)
  tina.goto(x,y)
  colorshift2()
  ed.goto(-x,-y)
  colorshift3()
  myscreen.tracer(1)
myscreen.onclick(clicky)

# These variables let you easily change tina's speed  
turn_amount = 7                                       
move_amount = 10                                      


# Define a functions that should happen when a key is pressed
def go_left():
  tina.left(turn_amount)
  
def go_right():
  tina.right(turn_amount)
  
def go_forward():
  tina.forward(move_amount)
  
def go_backward():
  tina.backward(move_amount)
  
# I decided to make a new turtle that will mirror the actions of the original
def go_leftR():
  ed.right(turn_amount)
  
def go_rightR():
  ed.left(turn_amount)
  
def go_forwardR():
  ed.backward(move_amount)
  
def go_backwardR():
  ed.forward(move_amount)
# Tell the program which functions go with which keys
# I decided to comment out these lines to focus on clicks
# myscreen.onkey(go_left, 'left')
# myscreen.onkey(go_leftR, 'left')
# myscreen.onkey(go_right, 'right')
# myscreen.onkey(go_rightR, 'right')
# myscreen.onkey(go_forward, 'up')
# myscreen.onkey(go_forwardR, 'up')
# myscreen.onkey(go_backward, 'down')
# myscreen.onkey(go_backwardR, 'down')

# Tell the screen to listen for key presses
myscreen.listen()
'''
'''python
import turtle

tina = turtle.Turtle()
tina.speed(5)
# Here's my green triangle




tina.fill(True)
tina.backward(39)
tina.right(28)
tina.backward(39)
tina.right(28)
tina.backward(39)
tina.right(28)
tina.color("green")
tina.fill(False)

tina.fill(True)
tina.forward(100)
tina.left(120)
tina.forward(100)
tina.left(120)
tina.forward(100)
tina.left(120)
tina.color("green")
tina.fill(False)

tina.fill(True)
tina.color("red")
tina.forward(100)
tina.circle(15)
tina.backward(100)
tina.fill(False)



tina.fill(True)
tina.color("blue")
tina.forward(50)
tina.circle(20)
tina.backward(50)
tina.fill(False)

tina.fill(True)
tina.color("red")
tina.forward(0)
tina.circle(15)
tina.backward(4)
tina.fill(False)

'''
