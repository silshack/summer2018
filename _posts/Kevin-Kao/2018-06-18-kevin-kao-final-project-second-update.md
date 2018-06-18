---
layout: post
author: kevin-kao
title: "Kevin's second update on the final project"
---

Here's my trinket
<iframe src="https://trinket.io/embed/python3/a4666597d4" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>


<iframe src="https://trinket.io/embed/python3/21ab045522" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>



This weekend, I spent much time on learning and understanding how I can utilize pandas package to complete my final project. 
It turned out pretty good. I can feel that pandas is really powerful and effective in dealing with the massive data. 

Basically, I followed my plan step by step:

1.	Read CSV via pandas
2.	Extract 2008 to 2017 data 
3.	Remove the missing data
4.	Ask the user to choose a country
5.	Select the data based on the user and print them out
6.	Create a line plot
7.	Change the color of the line and specify the x-label and y-label 

Although this plan looks simple, I’ve bumped into some difficulties. For example, I had a hard time removing the missing data. 
The pandas’ documentation showed that `df.dropna()` can directly remove all the missing data only providing that 
the missing data is showed as ‘NaN’. That was really confusing to me since the missing data in my file is showed as ‘no data’. 
I’ve tried many ways to solve this problem but in vain. Luckily, I was able to figure it out with the help of Elliot. 
His method was pretty cool. We ended up using ‘replace’ function to replace the ‘no data’ with ‘NaN’.

```
df_unemployment = df_unemployment.replace('no data', np.nan)
df_no_missing = df_unemployment.dropna()
```

I was also stuck with the place where I could not turn the data into a plot. I realized that because the data from the file is 
all strings, I had to convert all data from strings to numbers before I created a plot. It took me much time to get them right.

Regarding the milestone, I have completed two of them.

-	[ ]  Create main menu for the user to choose to see either unemployment rate or GDP per capita or both
-	[x]  The user can choose the specific country
-	[x]  Show the specific country’s unemployment rate or GDP per capita or both in the line graph (matplotlib)
-	[ ]  The user can choose to see the countries’ color depth which depends on unemployment rate or GDP per capita in the world map. 

I will try to strengthen the text-based interface after today’s class and make my program more interesting and useful. 
