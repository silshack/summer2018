---
layout: post
author: NobrineCalc
title: "Final Project Revision"
---
After working on my project some more during class and discussing my goals, I came up with a plan for what I want to accomplish as well as some methods to accomplish them.
My program will be built to allow the reading and further analysis of census data. A goal I have is to read each heading of the column back to the user and use this to engage in calculations.
My work today in class mostly consisted of focus on the UI to properly engage the user. At current I need to utilize the list and dictionary functions as well as the class.
I have already added a empty list for use in adding the lines from the data. In addition to this I also imported the statistics module. 

<iframe src="https://trinket.io/embed/python3/5f6672c1ec" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

As I worked on my program some more I came to look over some features that I could implement. The use of a graph and table to display data for users. Another feature I wanted to add is a method of calculating values.
To accomplish these goals I set about importing some more modules. 
This led me to wonder how to setup this calculation. As I thought about it, I decided to make the tables calculate median and means for the whole of a category. I also realized that my data holds a median already calculated and thus the issues I should focus on are the conversion of specific lines of data into integers for calculation.
This could be accomplished perhaps through usage of a class

<iframe src="https://trinket.io/embed/python3/27b3fa1e44" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

So far the resulting change to my milestones from my current work is to 

[ ] Implement a dictionary
[ ] Implement a class
[X] Output a table
[ ] Output a chart
[ ] Calculate an average
[X] Utilize a list

The question of how the chart will be setup is one of my issues, in addition deciding the properties of my class is another point. I will ensure the average calculation occurs on a column and have it omit columns with strings of text or regarding values in which averages are not needed.
