---
layout: post
author: draravindrk
title: "Final Project Idea"
---

For my final project, I wanted to analyze a dataset related to the Healthcare Domain. I spent most of my time searching extensively
for a dataset that aligns with my project idea in mind. Most of the datasets that I wanted to analyze were either "not freely available"
or "protected" or "not well organized. I started off by narrowing down to a couple of datasets that suited my idea of 
"What exactly I wanted to analyze". Most of the datasets that I encountered were either "very huge" or "not so well organized"
or may I say "unclean". After narrowing down to a few datasets which in a way catered to my ideology, I wanted to start off 
working as I didn't have much time left for me to dig further more into data sets that would be apt for my final project.

The dataset that I wanted to use was the (HCUP) Healthcare Cost and Utilization Project which has one of the largest
collection of longitudinal hospital care data in the United States.

I started off by creating "Menu" options for the dataset that I wanted to analyze which is here below.


```python
options = """Welcome! This program will help you to explore the top 5 most common diagnoses for Inpatient Stays.
Please select the disease you want to explore.
1 - Cardiac dysrhythmias
2 - Congestive heart failure
3 - Pneumonia
4 - Chronic obstructive pulmonary disease
5 - Osteoarthritis
"""

# This is a simple example of what an option function might look like
def option2():
  print("This is option 2")
  input("Press enter...")

# The variable for our while loop  
going = True

while going:
  print(options)
  choice = input("What is your choice? ")
  if choice == "2":
    option2()
  elif choice == "exit":
    going = False
    
# This only happens if you exit.
print("Goodbye.")
```
Below is the embedded trinket link for the "Menu" options of my dataset analyzer.

<iframe src="https://trinket.io/embed/python/1e086fb69c" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
