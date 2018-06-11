---
layout: post
author: ponderm
title: "Maddy's Black Jack Game"
---
# Black Jack Game

This past Friday, I started working on this assignment by laying out the framework of the basic requirements the program needed. To do this, I used the commenting technique Elliott has been using in class - basically creating a to-do list within the program before actually coding anything. Bit by bit I was able to go through and add the parts necessary to make the program run as required. Initially I had issues with while loops. I think the loop didn't quite have a way to exit, and it was getting stuck on whatever print function I had in place. Up to this point on Friday, I had been on stand-by at work. We got a call for another run and this was the perfect time for me to take a break and let my brain "freshen up" before looking at the errors I had been having again. Later that evening, I was able to approach the code again with "fresh eyes" and code more easily spot my mistakes from earlier. The issue I found was I called for the wrong variable in several lines of code. The wrong variable was similar in name to the one I actually needed, the difference was that I needed a numerical value but was calling for the variable that contained a string value. 

### Error in the code: 
```python
next_set = first_set_input + random_num(digits)
# should actually be:
next_set = first_set + random_num(digits)
# first_set stored the initial hand sum
```
Note to self: don't make variables that are so similar that your brain unknowingly confuses the two. I later found another missing parenthesis as well later on at the end, which I think was causing the initial problems I had. I was getting the `SyntaxError: invalid syntax` early on, and I believe that missing parenthesis is what caused it. I eventually got to the point in the program where I had met all the requirements for the basic game, but realized I had forgotten to make sure I define the functions needed and incorporate them into the code.. Oops! I went back and started reorganizing the code so that I could use the functions and attempted to work on dealing with bad data as well. 

The defined functions were probably supposed to make coding for this assignment easier had it been incorporated from the start, but trying to add it in after the fact ended up making it more challenging for me because I had to break everything down and carefully follow the code. Otherwise it was really easy to get bits of code lost and forget what it was meant to do. To see the process I have added the embeded Trinkets for the before I added functions to after I started adding functions and when it started getting funky. At this point in the coding process, I decided I had enough for one day and would try again the following evening. 

### Program prior to added functions:
iframe src="https://trinket.io/embed/python3/6253a57b98" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

### Program after starting to add functions:
<iframe src="https://trinket.io/embed/python3/806c3e47b3" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Saturday evening I fixed what was wrong with the most recent version of the program and started fine tuning the simple version of the game so that it would respond appropriately when someone busted. My program started "freaking out" when I tried to fix this in the main() function. It looped a many times and gave a lot of output in the thousands `"Your hand now totals to 3459"` . I managed to keep it from looping through randomly like that by adjusting the while loops and finally completed  the final basic game of Black Jack:

### Final Basic Game of Black Jack
<iframe src="https://trinket.io/embed/python3/9748775575" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Sunday was when I started making the game a little more complex by adding the advanced features. This involved adding more 10s to the list of digits used to determine the player's hands so it could include the Jack, Queen, and Kings that are in a deck of cards and valued as such. Additionally, advancing the game involved the dealer also being able to "bust" and making gameplay a little more "fair". Once the dealer's score was determined, I had to modify the if-else statements so they would reflect the dealer's ability to bust now. This was a little tricky and did result in a few errors at first but ultimately I determined this gave the best results:
```python
      if (21 >= dealers_score >= next_set) or next_set > 21:
        print("The dealer wins. You lose!")
      elif dealers_score > 21:
        print("The dealer busted. You win!")
      else:
        print("The dealer lost. You win!")
```
The initial `if` statement was key in making sure the dealer was appropriately determined as the winner.

Finally all the pieces came together well, and I can now play Black Jack with my computer!

### Final Advanced Black Jack Game
<iframe src="https://trinket.io/embed/python3/c0710ed5e2" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

# Revised Milestones:
- [x] User can initiate a game of Black Jack.
- [x] Program can get the user's first two cards' sum.
- [x] User can choose to get another card or not.
- [x] Program informs user of their final score.
- [x] Program gets the dealer's score (between 16 and 21 for basic version).
	- [x] Program gets the dealer's score (16 and above for advanced).
- [x] Program determines who the winner is based on.
- [x] User can choose to play again.
