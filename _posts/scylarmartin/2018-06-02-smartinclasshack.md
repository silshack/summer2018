---
layout: post
author: scylarmartin
title: "Scylarmartin's class hack"
---
Black Jack part

I did a lot of change in my blackjack program. I tried to add advanced function and make it similiar to a real Black Jack Game. I add the
A J Q K into the deck and 4 suit into the deck too. I apply a random shuffle mode to shuffle a list of integer from 1-52 and then assign 
them with suit and rank. I went through some discussion online about conditional for loop and make my sum mechanism works. I do not quite 
sure how it accurately works, but it works after multiple adjusting the code. I will keep an eye on it. I dont have time to adjust the 
judgement part either. But I think integrate them into one function will make code much more readable.

```python
def p_sum(cards):
    contains_ace = False
    raw_sum = 0
    for rank, _ in cards:
        if rank == 'A':
            contains_ace = True
            raw_sum += 1
        elif rank == 'J' or rank == 'Q' or rank == 'K':
            raw_sum += 10
        else:
            raw_sum += rank
    if contains_ace and raw_sum + 10 <= 21:
        return raw_sum + 10
    else:
        return raw_sum
```


Class part
I encounter a lot of frustration in this part. I struggled a long time to figure out which part I want to make it into class. In my very
first thought, I was thinking to make the judgement process as a class, such as (blackjack: when either of player or dealer = 21, overflow:
they are busted, compare: compare them when player called stay) However, I cant figure out which element I want use to classify them(name,
species). Thus I turned to  class the poker itself as the raw number, rank suit.


However, it is very confusing for me since it is different from the pet example, which we input the parameter of pet. In my case, the poker
is generated when it is drawed, so I integrated the draw function into my poker class. However, the _str_ function wont work. It is said
that it is undefined, I dont know why.

Here is the link：

<iframe src="https://trinket.io/embed/python3/266d7e3961" width="100%" height="600" frameborder="0" margin
width="0" marginheight="0" allowfullscreen></iframe>



