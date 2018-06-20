---
layout: post
author: draravindrk
title: "Aravind's Final Project"
---

For my final project, I wanted to analyze a dataset related to the Healthcare Domain. I spent most of my time searching extensively
for a dataset that aligns with my project idea in mind. Most of the datasets that I wanted to analyze were either 
"not freely available" or "protected" or "not well organized. I started off by narrowing down to a couple of datasets that suited 
my idea of  "What exactly I wanted to analyze". Most of the datasets that I encountered were either "very huge" or 
"not so well organized" or may I say "unclean". After narrowing down to a few datasets which in a way catered to 
my ideology, I wanted to start off working as I didn't have much time left for me to dig further more into data sets
that would be apt for my final project.

The dataset that I wanted to use was the (HCUP) Healthcare Cost and Utilization Project which has one of the largest
collection of longitudinal hospital care data in the United States. I spent a considerable amount of time cleaning and aligning
this Dataset so that it would apt while the program is being executed. As the dataset file that I had was a huge one, I narrowed down my
choices that I wanted to work on to the Top 5 Most Common Diagnoses for In-Patient Stays in the United States. The data analyser 
helps with analyzing the data from the csv file and it give the number of patients for a particular diesease as outpiut based on 
the parameters age, income and sex. To start,I created a "Menu" option for the disease. After choosing the diseases that I wanted to 
analyze, the next step was to choose the parameters that I wanted to analyze which are "Age", "Sex" and "Income".
The next step was building a menu option for the parameters. Now while going into the parameters for each disease selected, 
when the user selects the parameter "age" the analyzer displays the data availability in years for the number of patients in 
age groups of 45-64 Years, 65-74 Years and 75+ Years. The "income" parameter displays the data availability in years 
according to the income quartles and then the numbers for quartiles according to Quartile 1 (Lowest), Quartile 2 (2nd Lowest), 
Quartile 3 (2nd Highest) and Quartile 4 (Highest). The third parameter "Sex" displays the data availability in years 
for males and females and then the totala number of patients in each sex.

Below is the embedded link to the Data Analyzer on Trinket:

<iframe src="https://trinket.io/embed/python3/eff3b349ce" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Follwoing are the steps for the code for the final project:

 
```python
# Print an alphabetized table of each parameter group and its # of years, separated by tabs

print("\n================== DATA AVAILABILITY ==================")
    print(" (availability of data for each ",parameter," group) ")
    print("========================================================")
    print(parameter.upper(),"GROUP :: DATA AVAILABILITY")
    print("========================================================")
    for param in sorted(param_dict):
      print(param+" :: "+str(param_dict[param])+" years")
    print("========================================================")
    input("Press Enter to view data summary")
    return
    '''
```
    
```python
# Print an alphabetized table of each parameter group and its # of patients, averaged over the years
        print("\n===================== DATA SUMMARY =====================")
    print("(avg # patients per ",parameter," group over the years)")
    print("========================================================")
    print(parameter.upper(),"GROUP :: DATA SUMMARY")
    print("========================================================")
    for param in sorted(param_dict):
      print(param+" :: "+str(param_dict[param])+" patients")
    print("========================================================")
    input("Press Enter to return to main menu")
    return
```
   
```python
    def worker(disease,parameter):
    
```
  
```python
  # Open our data and store the output
  with open('HCUP_DataSet.csv') as f:
    hcup_lines = f.readlines()
```
    
```python
  # Build a list of lists data structure
  hcup_table = []
```

```python
for line in hcup_lines:
    # Append the line, but split into a list on each ','
    hcup_table.append(line.split(","))
```

```python 
  # Build a dictionary containing each age group 
  param_dict = {}
```

```python
# Get all parameter group labels
  for row in hcup_table:
    if row[5] == disease and row[1] == parameter:
      param = row[2]
      # Set each parameter group label as a key with 0 as value
      param_dict[param] = 0
```  
      
'''python
  # Build a dictionary containing a dictionary for each paramter group containing 
  # number of years and total hospitalizations value (the sum of all stays
  # that happened in that parameter group)
  
  big_param_dict = {}
  
  for param in sorted(param_dict):
    big_param_dict[param] = {}
  
  for row in hcup_table:
    if row[5] == disease and row[1] == parameter:
      param = row[2]
      year = row[0]
      if row[6] == "":
        stays = 0
      else:
        stays = float(row[6])
      big_param_dict[param][year] = stays
  
  # print(big_param_dict)
  
  for param in param_dict:
    num_years = 0
    total_stays = 0
    
    for year in big_param_dict[param].keys():
      num_years += 1
      total_stays += big_param_dict[param][year]
      # print(param, num_years, total_stays)
    
    param_dict[param] = int(total_stays / num_years)
  
  printer(param_dict,parameter,'summary')
```
  
  
```python
  options = """
================== WELCOME ==================
This program will help you to explore the top 5
most common diagnoses for inpatient stays
=============================================
Please select the disease you want to explore.

1 - Cardiac dysrhythmias
2 - Congestive heart failure
3 - Pneumonia
4 - Chronic obstructive pulmonary disease
5 - Osteoarthritis

(Press Enter to exit)
=============================================
"""

sub_options = """
=============================================
What would you like to do?

1 - Explore by Age
2 - Explore by Income
3 - Explore by Sex

(Press any other key to go to previous menu) 
=============================================
"""

opt = ['','Cardiac dysrhythmias', 'Congestive heart failure', 'Pneumonia', 'COPD', 'Osteoarthritis']
sub_opt = ['','Age', 'Income', 'Sex']
```

```python
# The variable for our while loop  
going = True

while going:
  
  print(options)
  choice = input("What is your choice? ")
  
  if (choice in ['1','2','3','4','5']):
    print("\nYou have selected ",opt[int(choice)])
    print(sub_options)
    sub_choice = input("What is your choice? ")
    
    if (sub_choice in ['1','2','3']):
      print("\nYou have selected ",sub_opt[int(sub_choice)])
      worker(opt[int(choice)],sub_opt[int(sub_choice)])
    
  else:
    going = False
```

```python
# This only happens if you exit.
print("Thanks for using this program. Goodbye.")
```

Thank You!
