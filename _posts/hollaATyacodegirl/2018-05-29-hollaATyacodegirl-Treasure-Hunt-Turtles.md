---
layout: post
author: hollaATyacodegirl
title: 'hollaATyacodegirl's Treasure Hunt Turtle exercise'
---

Below is my code for the Treasure Hunt Turtle exercise.

<iframe src="https://trinket.io/embed/python/1bc2f1bb5e?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

In this exercise, I applied a number of our previous lessons. 

I used try/except statements to handle user input that was non-numerical. I had more trouble handling if the user inputted a number outside 
the range of -100 to 100 for the x or y-coordinates. I tried to give a "Bad input" error if the user, with the following code:

```python
if user_x >= -100 and user_x <= 100:
      if user_y >= -100 and user_y <= 100:
        tina.penup()
        tina.goto(user_x, user_y)
        tina.stamp()'
...
else:
   print "Bad input"
```
I suspect it may be an issue of indentation. As this is the most complicated exercise we have written so far, there are many levels of 
indentation, and I am learning to keep track of that. 

Other skills that I applied were the if/elif/else sequence, and asking for user input using `input()`. I used many of the built-in functions
of the turtle module: `penup()` so that Tina did not draw lines all over the screen as the user guessed the treasure's coordinates; 
`goto(x,y)` so that Tina would go to the coordinates the user inputted; `stamp()` so that the user could view their previous attempts on the screen.
The code also uses the random module to hide the treasure at new, random coordinates every time the program is run:
```python
treasure_x = random.randint(-100,100)
treasure_y = random.randint(-100,100)
```
by choosing a random x and random y in the range of -100 to 100.
Speaking about modules, I learned about and used many functions from the `math` module. It's very powerful! My favorite part of this exercise 
was when I wrote a formula for the distance between the user's x and y coordinates and the treasure's coordinates:
```python
#distance formula between userx,y and treasurex,y
  distance= math.sqrt(math.pow((treasure_x - user_x),2) + math.pow((treasure_y - user_y),2))
```
My distance formula used the power function `pow(x,p)` which takes two arguments: what should be raised (x) and to what power (p). I also 
used the `sqrt(x)` function, which takes the square root of x. I had to pay attention to matching parenthesis in this calculation. Originally,
I had thought to make distance a function, but when I realized the arguments were already defined in the code (the random treasur coordinates,
the user input coordinates) I realized I could just define distance as a variable. I then based an if/elif/else sequence of statements based
on the value of that `distance` variable.
```python
if distance<= 5:
   still_going= False
   user_has_won= True 
elif 5 < distance < 20:
   print("You're close! "+ str(distance) + " pixels away. Try again")
elif 20 < distance < 50:
   print("You're getting warmer! "+ str(distance) + " pixels away. Try again")
else: 
   print( str(distance)+ " pixels away. Try again")
```
I used the variable and the if/elif/else sequence to give the user feedback on how close their guess was to the treasure's coordinates. The
feedback was definitely the most difficult part of the exercise, but once I thought of the distance variable it was pretty simple combined
with elif statements.

What was new in this exercise also was executing most of my code in a `while` clause, within that `while` clause having both try/except 
statements and if/elif/else statements. I took a while for me to understand 'while' statements, but now I understand that the 'while'
clause is only executed, and looped through, while the statement is True. Once the statement is false, the loop ends.
If the user guessed the coordinates within 5 pixels, the following code would execute:
```python
if distance<= 5:
   still_going= False
   user_has_won= True 
```
If the user guessed correctly, I had to set still_going to False, so that the while loop would end. I also needed to change user_has_won
to True. I then created another while loop that executed only if user_has_won was equal to True:
```python
while user_has_won:
  congratulate(tina)
```
Therefore the congratulate function would only play if the user had guessed within 5 pixels of the coordinates. I may not have needed this extra
while loop, but it made sense to me. 

This exercise was a bit more challenging than the previous ones, but I appreciated the direction and it was exciting when I had a breakthrough
and solved it! I look forward to the next challenge.
