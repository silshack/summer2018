---
layout: post
author: ponderm
title: "Final Project Updates, Round 1"
---

# Final Project Updates
## Data analysis of United States Infectious Disease Data from the CDC :microscope: 

Before I can really do any programming that engages the user, I need to format the datasets such that I can easily extract numbers and perform analysis techniques on. Formatting this dataset is really a testament to my understanding of lists and data types. First I had to read the table in Python format, then I had to remove lines of data that aren't useful (i.e. don't have numerical data or any data at all), then I had to remove commas from the numbers (Python does not understand numbers formatted with commas), then I had to convert the string numbers into float values, and then finally (up to this point) I have been tackling the task of making this data a table with 3 columns (presently it is one list of the information). 

Throughout these initial stages I have focused on the first dataset I have. Later, once I fully understand how to best approach this, I will also apply this same formatting technique to the other datasets. You can see here that it is still a work in progress: 
```python
annual_table = []
new_annual_table = []
for line in annual_lines:
  if read_data:
    if line == "\n":
      read_data = False
      break
    data = line.split("\t")
    
    if data[1] != 'ó':
      annual_table.append(data)
      new_data2 = float(data[2])
      # attempting to convert the string values into numerical values that can be used for analysis
      if data[1].find(","):
        new_data = float(data[1].replace(",",""))
      else:
        float(data[1])
        # annual_table.append(data)
      # creating a new table and transferring the columns
      new_annual_table.append(data[0])
      new_annual_table.append(new_data)
      new_annual_table.append(new_data2)
      # need to format this new table so that it has 3 columns

      # Will eventually use this to parse out diseases that are rare
      # if float(new_data) > 25:
      #   new_annual_table.append(new_data)
  if line.startswith("tab delimited data:"):
    read_data = True
```
I think the next step I need to take will be incorporating "\n" somewhere in the code, but I'm not sure where it belongs. After that point I can transfer this information to a dictionary or start indexing and analyzing data. Presently, I'm optimistic that data analysis will be more straightforward, but that may just be wishful thinking. I regularly underestimate the level of difficulty of tasks that I give myself.

# Previously Defined Milestones

What will my program be able to do?
- [ ] The user will be able to ask for the rate or number of cases for a specific notifiable disease
- [ ] The user will be able to ask for help and receive instructions on how to use certain features of the program
- [ ] The program will display charts for the rate of cases and number of reported cases for diseases for the year of 2016 and also broken down by month and racial group 
- [ ] The user will be able to identify the diseases with the highest reported cases and rates, as well as the diseases that had none or very few reported cases in 2016
- [ ] If time permits, the program may provide the user with an external link on the disease or a short blurb about the disease (this may be a bit ambitious, but definitely useful)
*notice how none are yet complete* :sob: :weary:

# Revised Defined Milestones

What will my program be able to do?
- [ ] The user will be able to ask for the rate or number of cases for a specific notifiable disease
- [ ] The user will be able to ask for help and receive instructions on how to use certain features of the program
- [ ] The program will display charts for the rate of cases and number of reported cases for diseases for the year of 2016 and also broken down by month and racial group 
- [ ] The user will be able to identify the diseases with the highest reported cases and rates, as well as the diseases that had none or very few reported cases in 2016
- [ ] If time permits, the program may provide the user with an external link on the disease or a short blurb about the disease (this may be a bit **ambitious**, but definitely useful)

*New One*
- [ ] The program will display a table of the data used if prompted by the user

# Before the Next Class

Since the next class is my LAST opportunity to get in-class assistance/advice, I am working towards having the data completely formatted and at least 1 difficult milestone completed (charts using either Pygal or Matplotlib :bar_chart:) and 2 of the easier milestones completed (ones that essentially find data and return it as prompted by the user :page_facing_up:). I think it is acceptable for these 3 items to be mostly completed with a few minor errors that can possibly be identified in class. 

# Here's what it's looking like thus far
<iframe src="https://trinket.io/embed/python3/c21ba37a07" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
