---
layout: post
author: syclarmartin
title: "syclarmartin's midterm reflection"
---
I cannot believe it is already midterm. Time flies. This course give me a completely different experience and impression of coding.(Of 
course this is my first coding class, too.) Rather than just sit there and listen to the lecture and do tons of homework to practice,
this class is more interactive. Even though this class is pretty intense,(we covered almost nine chapter in 3 weeks) we have a lot of time
 to explore and practice. I like the way we are doing this. By reading the textbook and jumping directly into homework, I got a great amount
 of feedback to myself during the lecture. We spend whole two hour and half to think and summary rather than copying the note. I feel it is
 pretty effective.
 In the midterm stage, I feel some difficulty in my study path. The first issue is that the time to build a complete code is longer and longer
 as we encounter more complicated structures, such as loops and list. Take the following code as an example:
 
```python
 total = 0
count = 0
average = 0
while True:
  try:
    x = input("enter a number: ")
    if x == "done":
      break
    new_number = float(x)
    total = total + new_number
    count = count + 1
    average = total / count
  except:
    print("bad data")
print(total, count, average)
```
I came to the front and type this code again. It feels very different from when I figured it by myself. In the beginning, I just memorized
what I wrote and try to recall them when I was in the front. I knew how to do it, but the logic is just not quite clear, so I cannot do it
as fast as I thought when i was at front. However, I like the way you guide me to go. By doing it step by step, more importantly, running it 
frequently, everytime I add any new element if necessaary, really helps to track the progress and easier for debugging.
One of the most important thing I learned from this experience is that practice is the most effective way to improve. It can not only improve
the general logic and the detail. 

```python
def gerund_infinitive():
  Keystring = input("enter ur word here")
  x = list(Keystring)
  if x[-3:] != ["i", "n", "g"]:
    print("thats not a gerund")
  if x[-3:] == ["i", "n", "g"]:
    print("to " + Keystring[:-3])

gerund_infinitive()

This is the pairing program from last lecture. In this code, there is only some basic skills of editing string and list evolved, and I already
practice some of them in the homework. However, I still make the mistake.

```python
 if x[-3:-1] == ["i", "n", "g"]:
```
That reflects that I did not understand the meaning of indexing thoroughly. I wont find it out without practing this question, since when we
do it forward, the "0" will confuse us.

Besides the homeworks, another highlight I enjoy is the turtle play. In the beginning, I dont unerstand why should we play a module instead
of learning more academic knowledge. However, I found it is very useful to learn the terminology and understand the relation aming these
terminology.
All in all, I feel quite satisfactory and learn a lot from this class. I believe practice makes perfect.






