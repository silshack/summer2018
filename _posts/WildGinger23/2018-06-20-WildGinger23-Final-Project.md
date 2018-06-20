---
layout: post
author: WildGinger23
title: "Final Project"
---

# Finding Aid Query (FAQ) Program V1.6

This is my 'final' version of my program, although it doesn't work the way I would like,

<iframe src="https://trinket.io/embed/python3/e778409fcf" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

In this program I successfully managed to,
- Use a dictionary to allow the user to see the series in a collection
- Allow the user to see the number of items in each series.

I think that had I had a little bit more time I could have gotten the custom class 'Dates' up and running, but I was far too ambitious in my initial scope. I wanted a function that would allow the user to request the dates at three levels, (1) Series, (2) Subseries, and (3) File (or item) level.

# Finding Aid Query (FAQ) Program V1.5

<iframe src="https://trinket.io/embed/python3/4a4f21ec98" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

In this program I had a clean structure for my program set up and I was satisfied with, but I should have prioritized the actual functions.

- How the program handled bad input at various stages
- How the Menu and Help text displayed
- How the exit function was working (Although I tried to allow it to loop back to main I realized that the user will only be able to change their mind once.)


## Reflection

First I'd like to address the milestones and the final project, and I'd like to close with a paragraph with a reflection on the class as a whole and my future coding goals. Here are the milestones I was aiming at before class on Monday,

###Program Capabilities
- [x] Import three .csv files that correspond to finding aids I've created
- [x] Reimport three .csv files with standardized columns
- [ ] Detect data that may cause errors "& ..." (Function 3) 
- [x] Can use collection dictionary to display information about the collection
- [x] Can use dictionary of dictionaries to display information about collections
- [x] [ ] [ ] Have "Help" returns at each level of each functions.
- [ ] Visualize data via text printouts
- [ ] Custom class utilization

###User Abilitities
- [x] User can discover the series that make up the collection (Function 1)
- [x] User can ask how many items are in a series (Function 2)
- [ ] User can discover the dates for a series (Function 4)
- [ ] User can discover the dates for the collection (Function 4)
- [ ] User can discover the dates for items (Function 4)

I knew that I put off a lot of the gruntwork for this project to the last few days, and I regret that. It caused me to encounter a lot of scope errors and made the fruit of my labor very ugly. That said I am pretty pround of the output. I feel that I 'hacked' until my program spat out what I wanted it to.

For each of the functions I have some ideas of how to improve them that I'd like to list below,

###Function 1 - Collection Explorer
At this point the function merely prints off the series and number of items in each series. 

###Function 2 - Bad Data Discovery
This function is non functional at the moment. It was the first idea I had when thinking about what I wanted to do with this data. If I were to work on this program for many more months this would be my main objective. I would need to learn more about unicode characters, the program we use to convert .CSV files to EAD XML files, and what characters throw errors in ArchivesSpace.

###Function 3 - Date Range
This was a very challenging aspect of the program because I wanted to use a custom class for dates so I could use it for every level. I definitly should have thought more about how difficult this was going to be and how much time it was going to take. I figured that since I would be working with numbers that it would be easier than coding other aspects, but I didn't factor in how I would utilize user input.

###Function 4 - Help
It was with this function that I began to see my code output starting to look like a recognizable text program, and I got excited. I would have liked to be able to make this menu accessible from anywhere in the program by typing 'help'.

## Reflection

This class has really challenged me. The piece of feedback that has been ringing in my mind since I read it was when professor Hauser said, "I don’t get a sense that you’ve been able to carve out enough time to fully engage with this course from your life." I feel that that was a very accurate and honest statement about my efforts in the class, and after reading this I really tried to come to class more prepared. I always tried to be as engaged as possible with in class lessons, but still felt that my out of class work was lacking. I also feel that my communication was lacking, and I didn't fully utilize Professor Hauser as a resource. I sometimes felt that I didn't want to ask simple questions over email, because the answers could be found in the readings. I tried to ask questions during class that would illustrate concepts and connections.

That said I am very satisfied with what I learned from this class. I persevered through confusion and frustration and feel well equipted to continue with my programming education. I remain interested in data visualization and I have a strong desire to explore anaconda on my desktop PC and peruse some Jupyter notebooks. I have been subscribed to /r/DataVisualization for a while now, but have only ever looked at the output of posts and said to myself, "cool", so I hope thhat now I can actually explore data visualizations that I am interested in and learn something. And I have subscribed to /r/programming so I can keep abreast of news and occasionally peruse articles that interest me with terms I recognize in the headline. I am going to think of this next year like the first year that Professor Hauser spent following Hacker news. I need to build a vocabulary and explore the field so I can gain an appreciation for what is (1) professionally relevant, and (2) personally interesting to me. 

This was an intense class and while programming interests me I don't think that I will really be able to study it and learn it in any great detail until I graduate about a year from now. I want to stay sharp however so I don't loose what I learned in this class. The way that I intend to do that is to take Databases in the Fall. I have worked in several databases, but I feel that this class is going to be invaluable to my professional career as an archivist.
