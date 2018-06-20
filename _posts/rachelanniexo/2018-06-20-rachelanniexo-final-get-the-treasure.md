---
layout: post
author: rachelanniexo
title: "It's FINAL-y Time to GET THE TREASURE"
---

# Takeaway: Scheduling is Important

I think my most important non-vocabulary takeaway from this assignment was the importance of time management and adequately planning ahead. I definitely think for this assignment, I bit off way more than I could chew in the allotted time because I was excited about my program. I tend to pick creative projects both because I enjoy getting to add personal flair to my work and because I know they can be a challenge, but this was still a challenge I didn’t adequately anticipate. I believe part of my problem with this is that I made a plan before really delving into the remaining chapters of the textbook and didn’t realize the “levels” could be the same type of activity with increased difficulty at each round. Ultimately, while this made things a lot more challenging for me, I do not regret my choice. This caused me to remove one of my levels, as it was redundant and probably not fun from a user perspective, but from my perspective was “essential” to the game. I wanted to make my game with tons of hidden references to one of my favorite bands (which has 5 band members), so I felt cutting a level kind of takes away from my vision. Thankfully, I still had enough levels to satisfy that requirement.
I feel I structured my workflow quite poorly, spending a lot of time on the graphics for the levels (which honestly, I am extremely proud of them and I hope people can tell I spent time on them, but not that I was rushed to finish the rest) and putting off important bits of code for last. I assumed my biggest hump would be getting from one level to the next, when in fact it was one of the easiest parts of my code because I elected not to require users to linearly follow my game. It didn’t help that I had work for five hours on Tuesday and unexpected company over the weekend.

# On Partnership

Another new experience was being paired with a permanent partner for pull requests and discussing our projects. I didn’t have a problem working with my partner, but I felt we didn’t work as closely as we could have because despite our games being turtle objects, we approached them in different ways. I also feel like with us both being beginner/intermediate Python coders doing somewhat different programs, it was harder for us to explain and make sense of what each other wanted to do. I think we probably weren’t as good at helping each other as the pairs in our class were. Still, I like that we were afforded the opportunity to bounce ideas off of each other, without having to create the exact same project and I think even though we didn’t really directly help each other with our projects, talking about them helped us conceptualize them better ourselves, and listening to each other provided us with 

# Aside from timing and scale issues, my major roadblocks included:

1. Having difficulty accessing and printing to my game state dictionary, which was used to keep win and lose screens. This affected the ability of levels 2, 3, and 4 to function as planned because there was no method of playing the screens and letting users know what had happened.
2. Initially being unable iterating through the moon picture list I created for level 1.
3. The sys exit method was not working for me as sys.exit() and continued not to work for me as a naked exit function.
4. I couldn't get my coordinate-testing loops to work! :(

# How I (Sort of) Drove Straight Through My Roadblocks:

I addressed these issues by seeking help from the professor, after spending some time marinating on each one. These were the solutions:
1. Trying to print output rather than calling the new background revealed whether or not things were actually being acted on
2. The moon pictures actually weren’t available in the trinket library, therefore they needed to be made available so they could displayed.
3. Sys exit remains a mystery, but resetting the screen makes it appear as though there’s no game being played, which was determined to be satisfactory since the sys wouldn’t work for the quit function.
4. I'm not going to lie, I still have no clue exactly why my code doesn't work here. I suspect it has something to do with the way I use float(character.xcor()) as an argument. If anyone has any ideas or advice, I am open to them as I plan to continue working on this game beyond the scope of class. Here's a code snippet:

```
  # This makes lasers until you reach the right side of the screen
  laser_names = ["zip", "zap", "zippy", "zappy", "zippity", "zappity", "zipzap", "zapzip", "zipper", "zapper", "mczip", "mczap", "azip", "azap", "bzip", "bzap", "czip", "czap"]
  while float(character.xcor()) <= 380:
    for named_laser in laser_names:
      this_laser = Laser()
      this_laser.hideturtle()
      if not this_laser.test_location(character):
        this_laser.hit = True
        break
        screen.clear()
        character.clear()
        turtley_turtle.clear()
        screen.bgpic(win_or_lose['lose'])
      if float(character.xcor()) <= 380:
        break
```

# Special Considerations:

I did put some special considerations into my program, though aspects of it may feel brittle. The two biggest points of consideration for me were both motivated by accessibility.
1. I allowed users to play the game linearly or by choosing whichever levels they like. I did this because it occurred to be that it may be especially difficult for someone with impaired motor skills to play Level 2: Ace in the Hole, which is contingent upon the users ability to draw a very narrow, very straight line.
2. My data file was pictures, both because I didn’t have another idea for it and also because I felt it might be important for someone with vision impairments to be able to swap out my busy backgrounds for plain ones that contrast more with the text and character on the screen.

# Looking Ahead
As I previously mentioned, I felt like my program lost a piece of itself when I removed the fifth level. To better my program going ahead, there are a few things I want to do.
1. I had a pretty cool laser image (it looked sort of like the “blade” of a lightsaber and was bright aqua blue) I made for my Laser class, but it wouldn’t display properly. Now that I understand Turtle class images require registration before they can be implemented, I will look into fixing that and making it a part of the class, so my Lasers look like real beams of laser-y stuff.
2. I want to make two versions of my game, one for the average user (without the seemingly mundane level five) and one to share with other fans of the band that comes with level 5 (which would be exciting and necessary to them).
3. I would also like to pursue making different modes for the game so that people with limited motor and vision impairments can play it entirely linearly and without having to switch the backgrounds themselves, though could certainly still be an option. To do this, I would make an alternate Level 2 that relies on something other than click-and-drag events. Perhaps the line could be jagged and the turtle navigating it might have to rotate using the arrow keys. I would also make a game mode with plain backgrounds and strongly contrasting colors only.

# How I Feel About My Work

Over all, I was satisfied with this experience and the program I created for my final. While it is by no means perfect, I feel it is an accurate reflection of that I’ve learned and my desire to continue learning and challenging myself in Python. I really appreciated being able to choose my own project and bring my own style to the table. This class has been a whirlwind partially because of the short nature of summer semesters and partially because I have really been pushing myself to present new and creative work with most of our projects. While I was initially a little scared when you said not to repeat the same projects over and over again, I think the class struck an excellent balance of learning new skills using completely new programs and experiencing refactoring by getting to work at recreating (and in some cases fixing!) some of our first few programs.

# In closing, here is a brief description of my program:

The first screen informs users of some of the basic things they can do, such as quit the program, access the help menu, or continue on in the game. Users are free to play the game linearly, with Level 1: Wait for the Moon being the easiest, and Level 4: Clumsy being the most disoriented (according to a few friends who beta tested it for me).For those who chose to play it linearly, the game looks like this:
1. Level One: Wait for the Moon uses a definite for loop to cycle through some pictures of a sunset as the moon comes out. When users are satisfied by the appearance of the moon, they can press J to move on to the next level. There is no penalty for pressing J too soon, although the graphics may become distorted as the program tries to do two things at once.
2. Level Two: Ace in the hole relies on click-and-drag events to repel down a rope. Going a certain distance off the rope will cause players to lose.
3. Level Three: Laser Frogger creates lasers that shoot from one side of the screen to the other. If you avoid the lasers, you can proceed to the next level, but colliding with a laser results in losing the game.
4. Finally, Level 4: Clumsy is the only level that can be won. Using reversed x,y coordinates to navigate across the screen, once users make it there they recover the treasure! Users cannot technically lose this level, but they can get lost off-screen. I was surprised to see users frustrated with the reversed x,y coordinates because I had grown accustomed to them -  a reason why it’s important to let someone else try and use your code! Originally this level was also going to have hidden bombs that could be triggered, but my testers were so flustered with the reversed motions that I decided to forgo it.

# Without further ado, here’s my code!

<iframe src="https://trinket.io/embed/python/cf23edb96f?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
