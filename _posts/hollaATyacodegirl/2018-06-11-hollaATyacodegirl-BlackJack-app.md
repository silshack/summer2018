---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's BlackJack project"
---

Below is the final code for my BlackJack project:

<iframe src="https://trinket.io/embed/python3/2d2c0de54a?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Writing the code for a functioning, simplified game of BlackJack was not too difficult. Where I encountered difficulty was when I refactored
my code to include custom functions. I was encountering scope problems: variables, like player_hand, that I had defined within one function would not be
understood by another function. The variables were self-contained within each function. This was not a problem when all of the code was outside of function: a variable could be defined once and 
the code would remember it's definition. The solution was to make each function fruitful, that is, return an output for each function,
and then *store that output in a variable when it need to be used in a new function.* THAT was a break-through moment! Once I stored a function's
output as a variable at the start of another function, I could connect the two. 

I had this trouble with the functions get_player_score() and main(). According to the directions, get_player_score was supposed to handle the
initial dealing of two cards to the player, and contain the "hit" or "stay" loop, returning the final player hand before the player hand was
compared to the dealer's hand. main() was supposed to contain the "hit" or "stay" main loop. I struggled with this, because how was a function to give two outputs? The initial player hand and the final hand?
While I recognize there may be other ways to a solution, I decided to make an additional helper function: initial_deal(). Initial_deal
handles the first two cards dealt, and then BOTH get_player_score() AND main() can act on the output of initial_deal() to update the variable
player_hand. Here is the final code for the three functions: initial_deal(), get_player_score(), and (main):

```python
# Deal the initial two cards to the player
def initial_deal():
  first_deal= deal_card() + deal_card()
  return first_deal

# Get final player score 
def get_player_score():
  print("The value of your cards is", initial_deal()) 
  final_player_hand= main()
  return final_player_hand
 
# Main loop: handles each "hit" or "stay" loop 
def main():
  still_going= True
  player_hand= initial_deal()
  while still_going:
    answer=input("Do you want another card ? (y/n)")
    if answer == 'y':
      player_hand= player_hand + deal_card()
      print("The value of your cards is", player_hand)
    elif answer == 'n':
      print("The value of your cards is", player_hand)
      still_going= False
    if player_hand > 21:
      print("Bust")
      still_going= False
  return player_hand
```

I have included my revised Milestones for the BlackJack Project below, emphasizing on which milestones I spent the most time/ which gave me
the most difficulty, and where appropriate, how I solved each milestone:

# Updated BlackJack Milestones

1.	Create a ‘deck of cards’: i.e. Generate a random number 1-10
1.	Deal ‘two cards’ to the player (this became the function initial_deal() )
1.	Dealer sum must be between 16-21 (this became the function get_dealer_score() )
1.	Ask the user whether they want to “HIT” or “STAY” (4 and 5 became the function main(), which is called within get_player_score() )
1.	If user returns “HIT”, add another randomly generated number to the user

**USER**
* randomly generate two numbers
* compute sum, store and show	
* ask user whether they want to “HIT” or “STAY”	- 
* if user choses “HIT”, add another random number, update the total,
and check if total > 21	
* if > 21, automatically lose	
* if <= 21, continue to ask user whether to “HIT” or “STAY” until user inputs “STAY”	

**COMPARE**:
-	compare User’s sum separately, is it <= 21?
if not = BUST, don't continue to compare User's sum and Dealer's sum:
if yes, continue:
-	compare User’s sum and Dealer’s sum: (three scenarios)
  * if User's sum > Dealer's Sum:
      User wins
  * if User's sum < Dealer's Sum:
      Dealer wins
  * if User's sum = Dealer's Sum:
      Dealer wins 

##Additional Milestones

- Ask the user whether they want to play again, **AND RESTART THE GAME**
  This task took me a while to solve. Finally, I realized I had to add an additional while loop. If the user replied yes, going was still equal True, and the game would loop again.
  If the user replied no, then going = False, and the while loop was exited. 
- **REFACTOR THE PROGRAM TO USE THE HELPER FUNCTIONS deaL_card(), get_dealer_score(), and especially get_player_score() and main()**
  This is where I encountered scope problems, that is, variables can't be stored in one function and called in the other, so the scope of
  a function is limited. I got around this by making the functions fruitful, and storing their output as a variable if it needed to be used
  by another function.

## Advanced Requirements

To make the game a little more like real Black Jack, I decided I was going to create a helper file, card_deck.py, where I wanted to create a
dictionary of the 52 playing cards. The 52 playing cards were to be the keys, and the numerical value of the card in the game of BlackJack
was to be the value in the dictionary. Ex. {'1 Hearts': 1,...} To further complicate the deck, in the game of BlackJack an Ace can either count as 
1 or 11, up to the player. That is another level of complexity I could add to the dictionary. 
The dictionary is still a work-in-progress. It has been fun, though, to think about how to most efficiently write up 52 keys for a dictionary. 



