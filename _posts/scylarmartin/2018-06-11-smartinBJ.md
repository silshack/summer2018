---
layout: post
author: scylarmartin
title; "Scylarmartin's Black Jack"
---
Black Jack:
 
 I encounter some serious difficulty in this project. It is not hard to set the initial setting. But I got stuck on the loops parts. My code
 can give the result of the initial round of dealing but cannot get the additional round correctly or just jump directly into the judging 
 winner phase.
 In the basic version of the game, I use the simple code for the dealer's card.
 ```python
 deal_card = random.ranint(16,21)
 ```
 And in my second version, I custom the mechanism of the dealer. Here is my code.
 ```python
 def dealer_stra():
  if int(dealer_card) < 16:
    dealer_card = int(dealer_card) + int(random.choice(card))
    print("Dealer's current sum is" + dealer_card)
  elif int(dealer_card) >= 16:
    dealer_card = int(dealer_card) + 0
    print("Dealer's current sum is" + dealer_card)

```
And the following part confused me.

```python
try:
  
  while True:
    player_choice = input("Do you want to hit or not(please enter (Y/N)) ")
    if player_choice == "Y":
      current_score = int(player_card) + int(random.choice(card))
      print("Your card sum is" + current_score)
      dealer_stra()
    
    while player_choice == "Y":
      current_score = int(player_card) + int(random.choice(card))
      print("Your card sum is" + current_score)
      dealer_stra()
      
    if int(dealer_card) < 21 and int(player_card) < 21 and int(player_card) > int(dealer_card):
      print("Congratulations, you win!")
  
    elif int(dealer_card) < 21 and int(player_card) < 21 and int(player_card) < int(dealer_card):
      print("Too bad, dealer wins!")
  ```
  In this part, I cut the rule of when dealer reach 21 or palyer got busted to test when they all have card smaller than 21. However the code
  stuck at the choice of Y/N. The code wont keep calculating the result and keep looping on asking me to make more choice. I have tried to
  add break after each if and create different loops, but it does not work. For the new advanced version, I have to figure that out and 
  maybe converted my structure to list.
  
  Here's my link:
  
  <iframe src="https://trinket.io/embed/python3/cce45a2058" width="100%" height="600" frameborder="0" marginwidth="0" marginheigh
  t="0" allowfullscreen></iframe>

Here's my new milestone:

1. Create the first round of dealing card. To be specific, in this round of dealing card, python will show the sum of the user's two cards.
and will record(but not show to the user) the dealer's card.

2.Generate a formula for dealer that dealer will stop hitting when the sum of its card is equal or beyond 16. Could realize that with an
 'if' in a 'for' loop.
3. Figuring out how the if and loop can combine together and the order of it.

4. Determine who is the winner. It is easy to set with the conditional command.

5. Design a congratulation animation or a loop that ask users want to play another game? I can also try to trace the score of multiple game.
 
6. Adding more user interface element, ask user whether want to play a game and if they want to continue after they finish one.
