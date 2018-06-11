---
layout: post
author: kevin-kao
title: "Kevin's Blackjack App"
---

I was glad that I made a simple but interesting Blackjack app. It was definitely not an easy one. 
I have been thinking how to do and what to do for quite a long time before I really started. 
Planning ahead is always my strategy. For example, writing a milestone ahead of time made me think of the steps 
that I can follow through. Although I didn’t follow every step on my previous milestone because I made some modifications, 
I still feel like writing the milestone is useful to me. 

Here is my revised milestone:

- [x] The program asks the player to enter his or her name to start the game. `input`
- [x] The program assigns a random number between 16 – 21 to the dealer.
- [x] The program assigns two random numbers to the player.
- [x] The program reveals the card to the player.
- [x] The program asks the player to choose either “HIT” or “STAY”. `input`
- [x] If the player chooses “HIT”, assign a new card to the player 
      (use the loop, the loop ends when the player choose “STAY” for the next time)
- [x] If the player chooses “STAY”, go with `if` function: if the player’s total number is greater than 21, 
      the player loses the game. On the other hand, if the player’s total number is equal or less than 21, 
      then see who is closer to 21 and the program decides who the winner is.
- [x] The program reveals the results of game.

Here is my embedded Blackjack Trinket:

<iframe src="https://trinket.io/embed/python/2552f8a84a" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

I spent almost half of my day completing this Blackjack app. I think it’s because sometimes I wasn’t quite sure 
how the loop work. I usually went back to the materials to clarify my thoughts. For example, one of the things 
that I have looked up was while loop. I remember for loop because we use it all the time in the assignment. 
However, I was not sure about how while loop works. I used while loop when the player’s total value is less than 21 
and I set a break in the end to exit the loop. I feel like while loop is definitely useful in this case because 
I can ask the computer to continue giving a new card to player until the player decides to STAY or the player goes burst. 
After exiting the while loop, I made another why loop for the player whose total value is greater than 21. 
The other place I was stuck was here:

```
if hit_or_stay == str("HIT"):
    player_list.append(random.randint(1,10))
    print(player_list)
    print(sum(player_list)) 
```
No matter how many times I had tried, I never got it right. The reason is that I didn’t put str() outside the “HIT”. 
I went back to look up my assignment and realized that every time when I set a variable to an input, I would put int() 
outsides the number. Therefore, I should do the same here: putting the str() for the characters. It seems to be an easy work, 
but it really took me a lot of time to get here. I usually forget some small but important concepts, which made me spend much 
time getting my code right. 

All in all, writing a Blackjack was an interesting journey to me. At first, I felt like it’s not that hard to complete. 
The only thing I needed to do is following my milestone steps. But once I started coding, I felt like it’s not that easy. 
I needed to look up my materials and review the concepts again. Fortunately, I made it in the end! I definitely learned a lot 
from this coding project. 
