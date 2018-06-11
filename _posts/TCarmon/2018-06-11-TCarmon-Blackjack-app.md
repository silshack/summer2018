---
layout: post
author: TCarmon
title: "Tia's Blackjack App"
---
This game was getting to be fun to create! I encountered many problems along the path of creating this game, I resolved many but, not all of them. :smiley:

Blackjack app **revised** milestones
- [ ] Allow user input
- [ ] Display player’s hand
- [ ] Allow user to hit or stay
- [ ] Display the player’s hand and dealer’s hand
- [ ] Compare value of player’s hand vs. dealer’s hand in order to determine who is the winner
- [ ] Show “congratulations”, “you bust!” or “dealer wins” type of feedback for user
- [ ] Allow user to play again

### Reflection:
Day 1 (5 Jun 2018): We had to select whether we were going to create a drawing or blackjack app. I chose a blackjack app because it sounded daunting. Why not take on a daunting task within the “safety” of a learning environment, right?! I worked with WildGinger23 to create my app milestones. He gave me several great ideas for .  Had function working to deal player two cards with a randome value from 1-10 then print the value however, I noticed some redundancy and tried to change my code to use a function within a function. Once I made that change, my program stopped running ☹ I now can not recall what I did the first time so, I will go to bed and try again tomorrow.

Day 2 (8 Jun 2018): Had to take a day for a mental break. I was able to fix my program so that it would display the player’s hand. Yay!!


Day 3 (9 Jun 2018) Was able to get while loop established. Handled the easier items first like ending the loop when the user says no. I decided to create a list of the player’s random cards dealt to their hand. I think this should allow me to sum the player’s hand.  I created a function to deal another card to the user, however instead of picking a new random number, the program is just using the first random number that was selected
```python
#set up while loop
while still_playing:
  user_hit_stay_choice = input("Would you like to take another card? (y/n)")
  if user_hit_stay_choice == "y":
    still_playing = True
    deal_another_card
    print ("Your hand now has a total value of ",sum(player_hand))
```


Day 4 (10 Jun 2018) Stepping away from my computer helped because I came up with an idea of how I could change my while loop so that hopefully the program will function as I intend when the user selects the option to take another card. I am going to change my while lpp

**Problem solving techniques:**

Utilizing a separate trinket where I would test out one functionality in my code. For instance, I utilized code in a separate Trinket to test my idea to use a list to store the value of the player’s hand. I also utilized a separate Trinket to test my idea of using a for loop to allow the user to play again. Here’s some of the `ask_to_play_again` code I wrote. 
```python
# def ask_to_play_again ():
user_new_game_choice = input("Would you like to play again? (y/n)")

# ask_to_play_again ()

for answer in user_new_game_choice:
  deal
  print("new game")
  player_hand.clear ()
  player_hand.append(random.choice(card_deck))
  print (sum(player_hand))
```
Tried using a function and also tried using a variable to deal a single card, could not get program to add a new random card value. Though it was repetitive, decided to remove the function and variable. 

Problem that dealer would be dealt a hand of 21 or higher when only two cards should have been dealt.- need to figure out why this is.

Day 5 (11 Jun 2018) Trying to fix one problem caused me to create an error where my program would no longer run. I did not create a duplicate so needless to say this was very frustrating since I was beginning to run out of time and had many things to work on.

**Here's the embedded Trinket:**

<iframe src="https://trinket.io/embed/python3/e5b980a39d" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
