---
layout: post
author: TCarmon
title: "Tia's final project"
---
Where has the time gone?! I’ve learned so much in such a short amount of time to the point that it feels unbelievable that we haven’t been in the course a full 16 weeks. 

Now on to the topic at hand, **my final project**. I choose to complete a data analysis utility for my final project. The reason I choose this is because it aligns with my future career goals. I was nervous about lifting off  to test out my new found python programming skills yet excited that I was going to provide to myself that I have what it takes to take a curve down a different career path.
I first tackled this project by selecting a data set. Since I am managing a lactation clinical research study at work, I decided to search for a breastfeeding or lactation focused data set. It took me a couple days however, I found one on data.gov. I was very excited about finding breastfeeding data and began to refine (read shorten from 20K lines) the data set right away!  I cut off some rows and columns from the original file inserted my data set to my Trinket, developed my thoughts of how I would utilize the “main menu” starter code found in Tuesday’s class notes. Then, I became stuck.
The first of many road blocks that I experienced was deciding how to visualize the breastfeeding data. I decided to start with a question that I could try to answer with the data thinking maybe this would help me think of ideas. I did not want to just randomly do something because I know how to do it, I wanted to do something meaningful. 

**Here’s the first Trinket** I saved while working on this project:
<iframe src="https://trinket.io/embed/python3/3e01da03af" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

For the next day or so, I struggled with coming up with ideas for my final project. Even after talking with Elliott about some good ideas of how I can display my data, I was uninspired to move forward. I decided to find a new data set. Something with more numbers, more of a raw data set where I could utilize my new found Python skills :snake:. I was having a mental roadblock and was convinced that switching to a new data set was the solution.  Though the dataset may not have exactly been the root cause of my mental roadblock, finding a new data set containing more raw data, more numbers did help me.  
Once I found a new dataset, I was able to quickly program some code to display summary statistics and after struggling with creating a histogram, I had the help of Elliott to create a histogram with matplotlib. Now I was getting a little excited yet nervous that I lost time going in circles about my dataset. I had several competing priorities and responsibilities that so I knew I had to make the best use of my available time to program my final project. 
I created a table with a header row and a footer that depicted the number of absences for each season. This was a breakthrough not because my code was complex nor because I figured out a difficult coding problem. This was a breakthrough because it finally got my creative juices flowing. Up to that point, I had such anxiety about this project almost to the point that my anxiousness was paralyzing. 

**Here’s my 3rd Trinket created while working on this project**:
<iframe src="https://trinket.io/embed/python3/c932b5839b" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

After saving and duplicating the above Trinket, I began working on my user interface, I decided to utilize the sample main menu code because it was straightforward and similar to what I already had in mind. My user interface did not take me as long as I thought it would to get it working. What did take me time (as of now it’s still not the exact way I wanted it) is programming code that would store the filename then pass it through when I called a class method. I know this is possible, I just have not yet figured it out. This is something that I will continue to work on, even after class has ended. 
**4th Trinket** with user interface:
<iframe src="https://trinket.io/embed/python3/6179d14114" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>


### Problem solving skills and attitudes

At one point I ran in to an issue, I was aiming to use a try and except to handle the statistics.StatisticsError I received the first time I printed summary stats, the error told me that the mode could not be assess due to their being two values that appear an equal amount of time. One of the things I would like to have figured out is how to tell the user what the two equally appearing values were. Here’s a snippet of the code I used in order to print a special message if a user encounters a statistics.StatisticsError. Note that I had to be sure to import statistics in order for the except to work
```
try:
    print ("Mode","\n", "Most common absence hours", (mode(work_absence_hours)))
  except statistics.StatisticsError:
    print("No unique mode; found 2 equally common values")
```
The problem solving strategy I used when I encountered this issue is to get up and take a break. I walked outside, got some fresh air then came back to my seat to work. It did not take me long to resolve the issue once I got back from my walk.

**Partner up**

Utilizing my partner became one of my problem-solving skills. Having multiple class sessions and the same partner was beneficial because I could bounce ideas around and get feedback as to whether my idea was good or bad. My partner gave me honest and helpful feedback. Kudos to @Wildginger23 

**work on something different**

Since my project contained multiple programming elements, I decided that when I got stuck on something, I would just move on to something different and come back to it later. This seemed to help me a lot. I gave this advice to a fellow classmate, hopefully the strategy helped them as well!

**Don’t stress too much**

Another problem-solving strategy I used is taking an “it is what it is” type of approach. I could not give myself more time in the day, I could not give away any of my responsibilities so, I decided to make the best of what I had. I know I’ve said something similar already, this was a big factor for me. I could not stress about the things that I could not change. Only keep moving forward and making progress with my program.

### Final thoughts

Through working on the final project, I learned that it can be fun to work on code with others. I feel that I have gained the ability to talk through and interact with a fellow developer’s code. This was a struggle for me during the first partner exercise and something that I set out to work on. 

I am proud of the work I have done and look forward to developing my skills outside of this class. I am excited to try new data analysis projects on my own.

**Here’s my final Trinket:**
<iframe src="https://trinket.io/embed/python3/e2b7072c8f" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Time for lift off  
:rocket:
