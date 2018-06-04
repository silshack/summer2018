---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Mid Semester Reflection"
---

I can't believe this is the mid-semester reflection already! The class if flying :dash: by. And where to start? We have covered so much material. 

I thought to start by rereading my previous reflections. I saw that my first reflection was very technical,and it lacked examples of the 
code I was talking about, which made it hard to follow. The multi-line markdown code blocks are really helpful in illustrating where I either
was stuck in my coding or had a breakthrough. I'm glad that by the second reflection I learned to include code blocks. They also really 
help me organize my thoughts. Overall I see that it's most helpful to see my learning journey when I write more in-depth reflections. So I 
will strive to do so for the remainder of the class!

I see that in the very first exercises, I was running into a lot of 'TypeErrors.' I had self-taught myself the Python basics for
my undergraduate honors thesis, but it's been years since I put it into practice, and I had clearly forgotten a lot. I didn't recall perfectly how `print`
worked, or concatenation. I kept trying to concatenate a string (for ex. a sentence fragment) and an integer! A **BIG** no-no!
```python
int= 3
print("There are " + int + "apples")

TypeError: cannot concatenate 'str' and 'int' objects
```

But through this,
I learned that Python's errors could be really informative, and that I could *chose* to look at them as informative, instead of simply frustrating.
The computer was trying as best as it could, in its limited language, to tell me what was wrong. I have to say that I rarely run into TypeErrors
anymore! Make every mistake once right? And learn from it! I have for a long time struggled with perfectionism. It's affected my
writing, to the point that I get writers block pretty badly. I keep wanting to write my ideas once, perfectly, the first time! But programming
is teaching me that it's ok to make a mistake. You really do learn from your mistakes, and that makes you a better programmer in the future.
I also really liked our Refactoring exercise. I like returning to code, that may be dirty and was written to 'just get it done', and cleaning
it up. It's like a fun puzzle to solve that gives you a really rewarding result--clean, pretty code!

In one of my reflections, I wrote that I respond better to assignments with a specific goal, or task. I struggled with the open-ended, 
creative assignments, and preferred the exercises from the back of the chapter. I would love to say that I approach each new creative 
assignment with less anxiety... But I can't say that yet. It's still a struggle, but it's a process. I'm hopeful that with more practice
I will be able to approach open-ended assignments with less anxiety. But at least this class has helped me form a strategy. Now I break down
my work on creative programming projects in the following ways:
* I Brainstorm: What do I want this program to do? Big picture.
* Break down my Big Idea in do-able tasks
* Know that it's ok to solve these tasks out of order. One may come to me easier than the other. This is a good way not to get stuck at the
very beginning!!
* If I'm stuck, take breaks. I like to check in on my houseplants.. which ones need watering? Watering my plants, as I coax them to grow, 
is very soothing for me. So is taking a few minutes to play with my foster dog, or to sit down and pet her. 
* Measure my progress in cups of tea I've drank. It may sound silly, but a hot cup of tea is really soothing to me, and I can measure my 
progress in how many cups of tea I've had. It also helps that the tea forces me to take breaks (bathroom breaks :sweat_smile:). 

In Python, I don't think there's any one chapter or topic that I'm still foggy on. I went through and listed all the skills that we have learned 
so far, and I feel pretty secure with them. I am happy to report that I can navigate Github with way more ease than on the first day of class!
I understand how to create a new file, how to name my file, how to begin my post with the appropriate heading. I understand that a pull request
is a documentation of the differences between the master branch and the branch on which I've made my changes. I'm really happy that navigating
Github has become easier because I recognize what a powerful tool it is for project management, which actually happens to be the other
class that I'm taking this semester! So, in a way, Github is a synthesis of the two classes I am taking this semester. So it's a great learning
experience!
I realize that I still need to become more fluent in Markdown. I've tried to use some examples of it in this post. But I recognize this is an
area I can put more effort into in future posts.

Overall, I have to say I really enjoy how this class is taught. When I first taught myself Python, the textbook I used threw all the basics
at me in the very beginning: strings, for loops, lists, dictionaries right up front, you name it. And then it was essentially like, have at! I like the textbook we're using for this class
a lot. And I appreciate that we spend a class building up the complexity of how we can use these simple concepts, before moving on to the next basic.
I like the challenging exercises. They show how powerful the basics of Python can be. 

I also come at this class, now, having had the perspective of a teacher. I taught undergrads for four years in the Biology Department at Duke,
and I learned a lot from that experience. That is to say, I've been on the otherside, and so I appreciate a lot more the decisions that the
teacher has to make. For example, I appreciate that Elliott is O.K. with us slowing down the pace when we code together as a class, so 
everyone is on board. Sometimes going slowly really forces me to confront which parts of the code I don't understand, so that I can understand
the whole thing thoroughly.

I will leave off with my favorite piece of code that I have written for this class: my polygon function. This came out of refactoring
our logical turtle:

```python
def polygon(length,sides):
  degrees= 360/sides
  for i in range(sides):
    tina.pendown()
    tina.forward(length)
    tina.right(degrees)
  tina.penup()
```

I feel that this piece of code shows for one, that I can define a function that takes more than one argument, and that function can either 
be called, or used by other functions. I really do like math, and geometry specifically, so figuring out the relationship between the number
of sides of the polygon and how many degrees
Tina needed to turn to draw the next side (the external angle) was really satisfying for me. I also like how clean it came out, instead of
repeatedly telling the turtle to go to different coordinates one after the other. I'm a big fan of refactoring. 

I can honestly say I've really enjoyed this class, and look forward to attending class. We make good use of our time together. I am
excited to take these tools that we've learned and start on more complex projects. I hope that the problem solving strategies I've developed
thanks to this class will guide me. 

:v: Halina 
