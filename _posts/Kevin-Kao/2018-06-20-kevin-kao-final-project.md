---
layout: post
author: kevin-kao
title: "Kevin's Final Project"
---

Here is my embedded final project:

<iframe src="https://trinket.io/embed/python3/502b5c1df6" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

### Why made this program?
I am quite interested in global economy, so I decided to make this program where the user can look up the unemployment rate 
and GDP per capita for a specific country. Also, I chose the data analysis for my project because I would like to learn more 
about how to deal with massive data and analyze it by using data analytics tools. Luckily, during my coding journey, 
I’ve gained quite a few new useful coding skills. 


### What’s the process of programming?
My coding process includes planning and executing. 

#### Planning: 
I listed the milestones before I started to code:
-	[x] Create a main menu for the user to choose to see either unemployment rate or GDP per capita or both
-	[x] The user can choose the specific country
-	[x] Show the specific country’s unemployment rate or GDP per capita or both in the line graph (matplotlib)
-	[ ] The user can choose to see the countries’ color depth which depends on unemployment rate or GDP per capita in the world map.

I’ve completed most of the milestones that I planned before. 

#### Executing:
-	Unemployment Data
1.	Read CSV file and form a data frame via pandas
2.	Extract 2008 to 2017 data
3.	Remove the missing data
4.	Ask the user to enter a specific country
5.	Select the data based on the user and print it out
6.	Create a line plot
7.	Change the color of the line and specify the x-label and y-label

For tidying up the unemployment data, I took advantage of this opportunity to learn the new coding skills: pandas and 
applied it in my program. I first learned pandas when I was in the Tripython meetup. It was truly a powerful tool for 
data analytics. Especially, when it comes to a huge amount of data, the pandas can simply make it as a complete data frame 
without the use of loop. It is way easier for me to sort the data and extract data by slicing the rows and columns.  

Although the process seems to be simple, I still bumped into some difficulties when using the pandas. For example, 
I had a hard time removing the missing data from the data frame. The pandas’ documentation showed that `df.dropna()` 
can directly remove all the missing data only providing that the missing data is showed as ‘NaN’. However, the missing data 
in my file is showed as ‘no data’. I’ve tried many ways to solve this problem but in vain. Lastly, with the help of Elliott, 
I was able to get rid of the missing data. I ended up using ‘replace’ function to replace the ‘no data’ with ‘NaN’, 
and then used `df.dropna()` to remove the unnecessary data. 

Another thing worth noticing is that I could not turn the data into a plot in the first place when I completed arranging the 
data. I realized that because the data from the CVS file is all strings, I had to convert all data from strings to numbers 
before I created a plot. I used `pd.to_numeric()` to convert all the strings to numeric types. I can feel how powerful 
the panadas is again. Simply using this function makes it possible to turn all the data into numbers, which is quick and easy-to-use. 

-	GDP per capita
1.	Read CSV file and add a list for the lines
2.	Ask the user to enter a specific country
3.	Extract 2008 to 2017 data and put them into a new list
4.	Convert lists of lists to a dictionary
5.	Use the dictionary to find the years and GDP numbers
6.	Create a line plot

For GDP per capita data, I attempted to organize the data through another way. In other words, I used the lists and dictionary 
to arrange the data, which are what I’ve learned from the previous class. In spite of the fact that I did learn the list and 
dictionary before, I still spent much thinking how I could get the right data from a large number of datasets. 
I first read the data and put the lines into lists. This would be lists of lists. Afterwards, what I was trying to do is that 
I built up a dictionary where the key is country and the values are GDP numbers. Therefore, when the user calls the specific 
country, the GDP numbers would be able to show up. As a result, I can make a plot based on GDP numbers and the years. 
I think the most challenging part here is to convert the lists of lists to dictionary. I ended up using loop to convert every 
list to a dictionary. 

Another place I had trouble with was formatting the x-axis to display the year in normal notation when I created a plot. 
I had no idea why the x-axis always shows: 1, 2, 3…+2.008e3 rather than what I want: 2007, 2008, 2009….2017. 
I’ve googled it many times but there was not a lot of talk about this. I’ve tried to code it as follows:

```
 plt.xticks(range(2008, 2017, 1))
```

And

```
plt.xticks(np.arange(10), ('2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017'))
```

The results are all the same. Initially, I was going wrong direction and didn’t know it’s because of the scientific notation. 
After I sought help from Elliott, I finally realized where the problem is. In matplotlib axis formatting, I had to disable the 
offset on the x-axis and y-axis by using ` ax.ticklabel_format(useOffset=False, style="plain")`.


### What skills/methods I used?
As you can see, unemployment rate file and GDP per capita file share the similar format but I used completely different ways 
to organize them. The reason why I wanted to try two different methods to arrange the datasets is because of the two reasons. 

First, I would like to carry out an experiment to test which way is more effective and efficient: using pandas or using lists 
and dictionary. It turned out that pandas is way more powerful and effective in terms of sorting the data and the process 
seems to be easier, whereas using lists and dictionary took a lot of thoughts on planning such as how to combine that with 
`for` loop. Apparently, if I am more proficient and skilled in using lists, dictionary, and loop, I might think that 
there is no huge difference between two of the methods in terms of the efficiency. However, providing that the datasets 
are more messy and complicated, choosing pandas tools would be a better option for tidying up or cleaning up the datasets. 

Second, I wanted to utilize this chance to practice and learn each method. Pandas tool is new to me so I had to find some time
learning and figuring out how it works. I can understand the basic rules and apply them in this project. On the other hand, 
using lists, dictionary, and loop is also a great opportunity for me to apply what I have learned from the past few weeks. 
I can also make sure that I understood what I have learned and put them into practice.

Apart from organizing data, I also learned how to use Matplotlib to make a plot. Except for the normal notation of x-axis that 
I struggled with, I feel like matplotlib is not difficult to understand. I’ve changed the title of the plot and specified 
x-label and y-label. I was able to use either pandas data frame or lists to make a plot via Matplotlib.


### About attitudes towards the final project

The journey of making this final project contained a lot of ups and downs. When I started to make a plan about what to do 
and the steps that I can follow in, I felt like this would be a smooth process. As a matter of fact, it turned out that it’s 
not as simple as I thought. First, I had to learn new skills like pandas tool. Second, sometimes I was not sure how to code, 
and I had to go back to my materials and looked for the answers. Sometimes, I spent a lot of time looking for the answer 
but in vain. But sometimes, when the plot just showed up without any errors, I felt so excited. Looking back what I’ve done, 
I feel like I’ve gained a sense of achievement of myself. About a month ago, I had no idea about coding at all. 
But now I can make a whole complete project from the very beginning to the end. I cannot believe this is happening. 
All in all, I think I have learned a lot from this project. Not only did I learn hard skills such as pandas, matplotlib, lists,
dictionary, loop and so on but also learn soft skills like how to adjust my mental health.

### Conclusion on this class
I can’t believe the course is coming to an end. It went by very fast. This intensive course was really a great one. 
I managed to learn a huge number of things in a short period of time. Sometimes I felt like learning things under pressure will provoke the potential.
I appreciate I have this opportunity to learn and grow. 

