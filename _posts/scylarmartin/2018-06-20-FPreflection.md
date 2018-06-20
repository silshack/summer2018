---
layout: post
author: scylarmartin 
title: "Scylarmartin's final project reflection"
---
  This project is definitely the hardest and the most complicated program I have ever done. Even I know that final project could be challenging,
I still somehow underestimate the difficulty of this project. When I designed the first draft of this project, I was thinking to rebuild
the game "pac-man". However, after researching about how pac man works that involves some alogrithms that I dont understand in current stage,
I have to give up and do something different. I still stick on the turtle moving pattern game. 
  The second idea came to my mind is to make a simple turtle chasing game as the tutorial video shows. However, the method applied in the
video is based on the function setheading that turtle will come close to the target by adjusting the angle to towards to the target. That
wont work for my project since I plan to build some walls and blocks to form a maze theme game. The seth method enemy will stuck at the 
corner and never make an effective chasing. Regarding to this situation, I decided to use the random moving method on my treasure and
enenmy turtle. And I found that it is fun to make player turtle to move forward automatically.
  The overall procedure I planned as I mentioned in my previous milestone is to design the interface first and then figure out what kind
of class turtle I will use. In another word, make the frame first and fill the content in. However, it turns out I had a really hard time
on doing this. I am used to code anything first came to my mind. But human's thinking pattern is way different from the python. What I did
is firstly, to build a series of command that can return certain results, and secondly, trying to encapsalute them into class, function.
It turns out that this is definitely a stupid move. I waste a lot of time on organzing the attribute. Since the messy my original code is,
debugging is becoming nearly impossible.
  There is another lesson I learned from my way to code is that; if one dont trying to think as coding language does, one will hardly master
certain method. For example, I learned to instance the class from our class practice. However, when I put all the class in my helpercode and
only instance them in the main loop, and if I didnt include them in the parantheses, it will constantly show undefined. I spent hours to
fix this and move most of my instance from the main file to the helpercode.
  Above is one example of what kind of general problem I went through. And the very first milestone I complete in this project will be
"setting the map". I am trying to make a maze pattern map instead of drawing some simple boudaries. In the very beginning, I try to define
every single box and piece them together into a maze. However, this is way too time-consuming that I cant even image that I can finish it
with dict method. Therefore, I did my research and found a tutorial video very useful. Here is the link:

https://www.youtube.com/watch?v=-0q_miviUDs

In this video, author apply a way of using the virtual block to builld list, and using the len of the list to set the coordinate of the
brick.

``` 
python
maze1 =[
        "XXXXXXXXXXXXXXXXXXXXXXXXX",
        "X                       X",
        "X                       X",
        "X                X      X",
        "X      D         X      X",
        "X                X      X",
        "X                X      X",
        "X                X      X",
        "X     E          X      X",
        "X                X      X",
        "X                X      X",
        "X                X      X",
        "X                XXX    X",
        "X    P           X      X",
        "X        X        X     X",
        "X        X    XXXXXXXXX X",
        "X        X              X",
        "X        X              X",
        "X        XXXX           X",
        "X                       X",
        "X                       X",
        "X                       X",
        "X                       X",
        "X                       X",
        "XXXXXXXXXXXXXXXXXXXXXXXXX"
        ]


for y in range(len(maze1)):
            for x in range(len(maze1[y])):
                char = maze1[y][x]
                x_cor = -self.bordWidth + (x*24)
                y_cor = -self.bordWidth + (y*24)

                if char == "X":
                    self.brick.goto(x_cor, y_cor)
                    self.brick.stamp() 
                    self.walls.append((x_cor, y_cor))

                if char == "P":
                    self.player.goto((x_cor, y_cor))
```
In this way it is easy to custom the map by editing the matrix docuemnt I made. And I also convert this list into the txt file. This makes
my code more readable.

  The second milestone that I complete is setting the status of the elements. It includes the moving function: random moving, how to recognize
the intersection, how to respond to the collision(changing to opposite direction). In this part I am inspired by both the Oreally video and
some other resource. To realize the effect of collision, we can simply makes it change to the opposite direction when coordinate hitting to
a certain value. However, this method is imperfect and will cause some bug that the turtle will stuck in the corner and hardly get out.
 The third milestone I completed is related to the former milstone, the counters. The counter start to count when the collision is recognized.
 I did not set up the collision event besides the counter.
 
The forth milestone is to set up the lvl for the game right before I try to design the interface.

Here is a part of code is class game

``` 
python
class Game():
    def __init__(self,screen, setmaxDragonballs, setmaxEnemies, setmaxLife):
        self.brick = Brick()
        self.walls = []
        self.player = Player()
        self.dragonballs = []
        self.enemies = []
        self.maxDragonballs = setmaxDragonballs
        self.maxEnemies = setmaxEnemies
        self.bordWidth = 288
        self.score = 0        
        self.maxLife = setmaxLife
        self.lives = self.maxLife
        self.score_pen = turtle.Turtle()
        self.lives_pen = turtle.Turtle()
        self.lose_pen = turtle.Turtle()
        self.screen = screen 
```  
In the very first version, I did not add setmaxdragonballs, setmaxenemies, and setmaxlife as paramete. In that time, I only have one
level therefore, I just simply set the self.maxdragonballs = a specific number. When I try to divide into 3 level. I actually split class
into three class(gameez, gamehard, gamedead). It doubles the length of my code, make it unreadable, make the advantage of using class
vanished, and causing seirous trouble when building the main loop. It takes me a while to correct this error. Now I gained a better
understanding of using class. Finally I successfully build a simple version of my game without the interface.
Here is the link:

<iframe src="https://trinket.io/embed/python/b44b8d2011" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allo
wfullscreen></iframe>

Finally, I started my final milestone: making the interface. I have to mention that, even I put "design interface" on the top of my list,
I just cannot get out of the comfort zone and digging this problem first. I left this to the last. This is definitely DISASTER. I spend two
whole day to organize my built class, and integrate attribute into game class to make everything working. The real problem is that I have not
own the skill to write them in a short period of time since I just do not used to build code that way. Therefore, I cant build a perfectly
fitting main menu class to integrate into the class game. The result is that I cant realize the main menu with the virtaul turtle button
easily, but I can not reset the game. Only thing I learned here is that I applied the dictionary once when I set up the pen. turtle. Instead
of calling five turtles to draw the button, the dict method make the code clearer.

Here is the link for my project:

<iframe src="https://trinket.io/embed/python/1a145574ba" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfu
llscreen></iframe>

  If I have more time on this project, the first thing I do is to rewrite the interface part coding and integrate into the my helper code and
make my main file more readable. Secondly, I will explore more feature of the element. For example, I am inspired online about some flash
and differnt disappearing/awaken method, but I do not have enough time to apply them. Thirdly, I will make a pop out window using tkinter
module which I find could be a ideal way to make a real "constantly available" helper dialog. In this way, I can avoid the problem of pausing
or accidently erase the current game. Fourthly, I may research some simple alogrithm method to realize how to "getting close" to the target
in a complicated map(of course the bouncing method wont be applied since if the trail is too narrow, it would be hard to play. In fact,
it is not easy to win the eazy mode of the game right now)

  All in all, even the process is pretty painful and I was experincing some difficulty time. I do have a better understanding of the topic
 we coverd in this summer session. In addition, I do ask help from others (ex. do you think the pac man will work here? why the system 
 constantly show that the statement is undefined, etc) This is reminding me the potential value of the coding community,too. Although my
 coding still have some flaws, I can see the improvement I made throught the whole month, and I am impressed by it.
 
Here's my updated milestone.
1. Recode the interface, recover the reset the game function
2. Expand the attribute of each class.
3. Adding auxiliary function(pop out window)
4. Explore the setting of the game, make the levels more reasonable.













