---
layout: post
author: ponderm
title: "Mid-Semester Reflection"
---
# Mid-Semester Thoughts on the Course and Personal Growth Throughout

While I go through this class, I am comparing a lot of what I am learning and how I am learning to my past experiences with programming. With Matlab, I had weekly assignments and readings that were extensive and often went well past the content covered in class. I spent countless hours in office hours and usually would spend hours at a time on one problem. That hasn't been the case for this class. Not because the material is any less challenging, but because the course has been designed to be more manageable and there is a significant emphasis on chunking out problems and taking breaks rather than having to focus on one for a long time. Although I admittedly haven't done this for every assignment throughout this class ***cough cough*** [turtle hacks] [https://silshack.github.io/summer2018/ponderm-turtlehacks.html] ***cough cough***, I am definitely incorporating this technique into majority of the assignments. I find this to be less frustrating and more enjoyable. 

I have had several points in assignments where I don't quite know how to do what I am trying to do. I look at resources online and still have problems understanding what they mean. Usually this results in me going down a different path and trying an alternative approach. I have definitely benefited from the in-class peer discussions on assignments. This usually provides clarity for me on how other people use their resources and then incorporate it into their code. For example, I tried really hard to incorporate the click events into the treasure hunt turtles exercise. I spent a bit of time both watching the videos provided and working on code for the assignment. I started early on with providing feedback based on the variable that defined the user input distance from the treasure as shown here:
```python
 if (dif3 >= 100):
    print("No where near it")
    still_going = True
  elif (100 > dif3 >= 65):
    print("Cold")
    still_going = True
  elif(65 > dif3 > 55):
    print("Coldish")
    still_going = True
  elif (55 >= dif3 > 45):
    print("Not quite cold, not quite warm")
    still_going = True
  elif (45 >= dif3 > 35):
    print("Not quite there yet. Try again!")
    still_going = True
  elif (35 >= dif3 > 25):
    print("Closer, but still not quite there yet. Try again!")
    still_going = True
  elif (25 >= dif3 > 15):
    print("Warmer, keep going!")
    still_going = True
  elif (15 >= dif3 > 5):
    print("You're so close! One more time and you should definitely get it!")
    still_going = True
  else:
    still_going = False
    user_has_won = True
```
So this is pretty complicated (and maybe a *little* unclear to the user), but it made sense at the time. What didn't make sense was using this same structure to incorporate click events. I really wanted to store the user's coordinates of where the clicked into variables (which was something I believed I could do in Matlab and was convinced it could work for Python). I never figured this specifically out, but I did get the chance to @sclyarmartin's treasure hunt exercise. He used a "distance" method `turtle.distance(*arg)` as a way to determine whether the turtle was close to the treasure or not. This was just one example in which I personally greatly benefited from working with another individual and got some of my own questions answered. I recognize too that I can get honed in on one way to do something and really struggle to get out of that method if it doesn't seem to work (maybe that's a good educational goal for myself in the last half of the semester!). I guess I just have so much determination and stubbornness that I don't want to give up on my initial idea. 

Apart from using my resources to their fullest potential, I'm still fairly fuzzy on functions vs methods vs classes. We covered this a little more in-depth during Thursday's lecture, but I think I still need more practice with coding before I truly understand them (I believe the clicky turtle exercise should achieve this). 

Another beneficial experience was going over the extensive homework for Thursday's lecture. Although at points I felt like the depth was a bit tedious, there were definitely moments in class where I had "lightbulb" moments. One example was during the discussion of making a list and adding to the list as opposed to creating variables (loop exercises). While I was trying to complete these assignments, I too tried to start with a list and then add on to it, but for whatever reason I kept getting errors and couldn't figure out what was wrong with the code. After seeing the others show how they solved it, I think I would be able to use the list method for a similar exercise:
```python
# List method
mumber_list = []
while True:
  try:
    feedback = input("Enter a number:")
    if feedback == 'done':
      break
    else:
      number_list.append(float(feedback))
  except ValueError:
    print('Invalid error')
print(sum((number_list), len(number_list), sum(number_list)/len(number_list)))
# Assigning variable method
answer_all = 0
count = 0
while True:
  answer = input("Enter a number:")
  try:
    if answer == 'done':
      break
    else: 
      answer_all = answer_all + float(answer)
      count = count + 1
      avg = answer_all/count
  except ValueError:
    print("Invalid input")
print(answer_all, count, avg)
```

All in all, progress with learning Python is being made! Still much to learn and be more confident in.
