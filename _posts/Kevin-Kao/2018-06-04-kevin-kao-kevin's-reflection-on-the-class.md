---
layout: post
author: kevin-kao
title: "Kevin's Reflection on the Class"
---

This summer is very different to me. I finally stepped out of my comfort zone and began to learn coding. 
The process of coding definitely includes a lot of **ups and downs**. Sometimes I felt frustrated because I was stuck 
for a little problem for quite a long time. But once I solved this, I felt a great sense of achievement for myself :blush:.  

Although I have completed each assignment on time, I definitely have to work on my time management skills. 
Since I’m also taking the business course from Kenan-Flagler School in the morning every day, I have to take use of 
every afternoon and the weekends to learn and writing code. Whenever I code, I cannot believe how fast time flies. 
I always feel like there isn’t enough time for me. 

For me, creating the ideas of what to code takes me a lot of time. I think I’ve spent a lot of time thinking the subject 
and trying to make my coding more interesting. But it turned out that spending a lot of time on planning is not necessary. 
The reason is that I always changed my minds when coding. Take my tutlehack’s assignment for example.

[Kevin’s TurtleHack](https://trinket.io/library/trinkets/d05f49e4ed)
Initially, I was trying to make turtle move according to certain number. But I feel like it might be a little boring. 
Why not try to use `random` function? Then I went back to the materials, and reviewed it again to make sure that 
I understand how to use it. I implemented this random function to make the user feel unexpected.

The place I felt confused was the loop assignment. Here’s the sample run:
```
Enter a number: 4
Enter a number: 5
Enter a number: bad data
Invalid input
Enter a number: 7
Enter a number: done
16 3 5.333333333333333
```
I was able to print out the total, count, and the average of the numbers. But I was not sure about how to avoid 
being printed out those every time when I enter a number. 

It turned out like that:
```
Enter a number:  4
1
4
4.0
Enter a number:  5
2
9
4.5
Enter a number:  bad idea
Invalid input
Enter a number:  7
3
16
5.333333333333333
```

Only when I was in class listening to other classmates’ sharing did I understand that I should not put `if:` 
and `else:` function on the same level as `try:` and `except:` function. Like this:
```
count = 0
total = 0

while True:
  a_number = input("Enter a number: ")
  if a_number == "done":
    break
  try:
    a_number = int(a_number)
    count = count + 1
    total = total + a_number
    print(count)
    print(total)
    print(total/count)
  except:
    print("Invalid input")
```


Putting `if` and `try` function on the same level means every time when the user entered a number, 
the computer would start to do the calculations on the numbers and make an output each time. 
I also learn how to make an empty list before starting to create a loop. By doing so, I can reduce much work 
to make the code easier to understand. Creating a list beforehand is definitely a great idea 
that I have never thought about. It was really great that I can learn many things from other classmates. 

To be honest, what I am still fuzzy is that I am not sure about terminology such as parameter,  argument, iteration, and so on.
As a non-native speaker, English is not my first language, so I usually forgot what it means. 
Initially, I thought that jargon is not that important as long as I could write the code without errors. 
But right now I realize that it’s still important because people in the computer science field use a lot. 
It is the good way to communicate with people to make them understand what my code means. 
Therefore, I will keep working on memorizing terminology. 

Lastly, my problem-solving strategy is to take some notes while studying the materials. This is really important 
because I have to make sure that I understand what the materials cover and translate them into my own words. 
Therefore, every time when I was stuck for a problem, I can refer it to my notes and also read the materials again 
to truly understand the concept and the use. 

In my opinion, coding requires a lot of **determination and perseverance**. Sometimes, I feel frustrated and 
have some negative thoughts like I was not born for a programmer. But once I overcame it, I felt like 
I might be able to do it! Therefore, I will keep looking on the bright side when coding.
