---
layout: post
author: ponderm
title: "Class Hack of Black Jack"
---
# Class Hacking a game of Black Jack
## Sounds like cheating to me
### But it's actually not! :smiling_imp:

I chose to refactor and incorporate class structures into the Black Jack app because I have most recently worked on it - so I'm really familiar with it - and I wanted to prepare myself for text-based/non-trinket programing techniques since that's the route I will be taking for the final. Initially, I thought that turning the whole game into a class structure might be the simplest, most logical way. It's not. I'm sure I could have gotten to that point where it was one class, but I kept betting several traceback errors in the code and I wasn't able to follow along very well to figure out where the errors were. At that point I just decided to do the deck of cards as a class, which was simpler since it was dealing with two functions versus  five that were really interconnected. 

How I managed to incorporate the cards class may not be the most correct way, but I think it was the correct way to avoid the global versus local problem many of us encountered the first time when programming for this particular assignment. For starters, I imported the class from the python file: `from cards import cards`, and then within the defined functions that needed to access the cards I called the class and then used dot notation to access the method as needed. Here's an example of this:
```python
def get_dealers_score():
  maddy = cards("Maddy") # the class is called in the function - local
  ans = maddy.deal_card() + maddy.deal_card()
  while ans < 16:
    ans = ans + maddy.deal_card()
  return ans
```
Like I said, I feel like that's not the most correct way to approach this, but it does work.

I probably have 6 or 7 variations of this app at this point now! 

### Class Hack of My Black Jack Program
#### Things are refactored and I had some time to tinker with the cards a bit too, so when you play it's a little more like the real game
##### I probably have 6 or 7 variations of this app at this point now! 
/play tada
<iframe src="https://trinket.io/embed/python3/5015dbd35a" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

I actually finished and submitted the pull request, only to go back and realize that my hidden card system only works if you take one card as opposed to multiple. I went back and modified it so I think it works. I struggled to figure out how to display all the visible cards and still keep the first one hidden. But now it shows you what your new card is so the user can keep track of the cards. 
