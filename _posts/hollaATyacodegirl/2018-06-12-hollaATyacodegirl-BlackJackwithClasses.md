---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Class Hack: Blackjack"
---

I am having great difficulty understanding and implementing the data structure, classes. Below, I tried to create a custom class called 
Card_Deck, that initially has the module deal(). I defined cards as an instance of the class Card_Deck, and then tried to have the function
intial_deal() use cards.deal() twice, on line 25. Unfortunately, I am not having success, because I don't understand how to define Card_Deck.
I understand that __init__(): must be defined for a class. I wanted to put under the dunder init module that Card_Deck is a list of values
1-10 (for now), but I haven't been successful in this endeavor. I welcome any and all feedback on how to create a class for Card_Deck.

<iframe src="https://trinket.io/embed/python3/8c7e2f0e35?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

UPDATE: SOLVED! 

I realized that I was not defining my cards_list in reference to self. Here is the correct way for me to define a class called Card_Deck,
and then create an instance of that class.

```python
import random

class Card_Deck(object):
    def __init__(self):
        self.list_of_cards= [1,2,3,4,5,6,7,8,9,10]
    
    def deal(self):
        return random.choice(self.list_of_cards)
    
# Define deck of cards

cards= Card_Deck()
```

- Halina 
