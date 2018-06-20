---
layout: post
author: ponderm
title: "Final Project Reflection and Trinket!"
---
# The Final Reflection :muscle: :sunny: :tada: 

## The Process
For my final project, I chose to make a program for a text-based data analysis utility. This particular option is more aligned with how I will likely use Python in the future, whether that is for future coursework, research, or career. Additionally, it was much easier for me to imagine what I would do with this assignment during the planning stages compared to the planning stages of a Turtle game.

Once Elliott told us in class to leave the entire weekend open for us to work on our projects, I realized I needed to start ASAP because I had work all day Friday through Sunday and I knew I would have limited time to work during the weekend while at work. I started by looking at different data sources. I am most interested in infectious diseases and after completing my Master’s I hope to either get a PhD in Epidemiology with a focus in Infectious Diseases or go to medical school to get a Medical Degree and specialize in Infectious Diseases. With that in mind, I immediately searched through the CDC’s website to find an appropriate dataset. I ultimately decided on data from 2016 for National Notifiable Infectious Diseases and Conditions: United States. From the CDC I was able to obtain annual statistics, monthly statistics, and racial statistics. Knowing that certain diseases are characterized by seasonal occurrences, I thought the monthly statistics would showcase these differences well. I was also interested in the potential for racial differences in cases of certain diseases, considering that disparities are evident among different races, this is likely not exclusive of infectious diseases.

Once I chose my dataset, I worked extensively on making the data readable and useable. This was tricky. I started off by focusing on one dataset so I could replicate whatever was successful later on with the other datasets. I wanted to make a data table so it was visually organized and structured. This particular method of reading the data was neither the most efficient for extracting data, nor was it the easiest method of organizing the data. Once I accepted defeat, I started creating the dictionary with a little guidance from Elliott. But before I accepted defeat, I tried every possible way I could think of to make a list work. It wasn’t until I was so frustrated and sitting in class staring at a computer screen that I finally did accept defeat. 

Programming seemed to start to go much smoother for me once I got the data formatted into a dictionary. I had to make some minor adjustments so that the same technique could be applied to the other two datasets, but conceptually, formatting all were very similar. Intermittently, throughout formatting the data, I worked on creating the general framework for the part of the program that would take user input and do specific tasks. This part of the program is also how my milestones would be accomplished.

##### A side note about milestones:
Early on I created a list of milestones for this program that I believed would be achievable and relevant to these datasets. After having two in class updates on final project code, I had absolutely no milestones completed. After approximately 6 days (give or take) of coding with 2 days remaining for the project, I had not completed any of my milestones. This was fairly discouraging at the time. 

Back to the program – the part of the program that incorporated user input to produce statistics was where I created a class called `Prompt()`. Within this class I made the `__init__()` function and many other methods. Some methods were “fruitful” and provided information for use in other methods and some methods were not “fruitful” and simply printed out data or graphs. Meanwhile, other methods were used to ask questions and create options for the user to engage with the program and make decisions about how they wanted to view the data. There were times when I was going through and creating these functions when I would get confused about what connected to what and how it was being called. I even made a copy/paste error where I had practiced coding something in main.py and copied the same code over to the class_struct.py only to run into an error because I was attempting to use the `disease_annual_dict` in the class method rather than making it a general dictionary that matched the others in the same method. This was also the point where I realized that I was making a lot of headway with the project. I could see a lightbulb turn on and my methods were starting to cohesively flow together. All that I had to do after spotting the dictionary error was add a few details to complete the milestones and make the program loop back to the main menu so the user could continue using the program.

##### Another side note about milestones:
Earlier, I mentioned having none of milestones completed by this past Monday before class. Well surprise, surprise, I was able to get almost all of them done (including the one I had labelled as ambitious) with a few modifications within 24 hours following the class period on Monday and with 24 hours left to work on writing a reflection and make any minute changes to the program so that it is more efficient and able to do more for the user. I am excited to include this as a part of my coding process because I was anxious that I was going to have to show a program that had very limited abilities. Another key take-away from this experience is that I laid out the framework for this project at the very beginning as opposed to going straight into tackling the milestones. By building up the framework first, I was able to essentially put all the puzzle pieces together at the end with few problems because I dedicated my time early on to ensuring that the framework was stable and mostly error-free. 

Luckily, the last speed bump I encountered was with using the `min` and `max` functions, only a minor milestone in the grand scheme of it all, but did eventually figure out how to apply this to my program. I was able to spend the rest of my time focusing on making the program more user friendly and even testing it out with my family and friends. I am admittedly pretty proud of what I have been able to accomplish with this program, primarily because I created a lot of this code simply by using the skills gained from this course, in addition to a few nudges in the right direction. I really hope I can add more to it after this class is over and possibly use it as supplemental material for PhD applications. 

## Skills/Attitudes Used Throughout the Programming Process
If it wasn’t clear before, I would like to clarify that I programmed this from the ground up. I started with a framework and then added the connecting pieces that made it all run cohesively. Another attitude I had throughout was, “You need to do as much as you can now, while you have time.” This attitude was powerful in that I am better off now (in the later stages of the project) because of it. But also came with other challenges: being tired, getting stuck on specific chunks of code, getting frustrated and discouraged. I would argue that I incorporated an almost healthy dose of breaks in the project process, but felt pressure to bypass some breaks for fear of running out of time. This attitude is one that has remained with me since I first started programming with Mathematica in high school. Up to this class (and in a few instances during this class), programming for class often comes with being assigned challenging problem sets with limited resources and time for solutions and dedicating a lot of time to solve the problem sets before the due date. 

## Improving the Program 
If I were to add more information to this program, I might consider looking at differences in age groups and sex. Age groups would likely show significantly more cases in younger (<5 years) and older (>50 years) populations. Differences between sex may exist for specific diseases, but likely are not different overall. To enhance the usability of this code, I would go back and make the graphing section work for any disease by changing where I wrote out a specific disease to be an interchangeable variable. Additionally, I would like to fine tune the keys of the dictionaries so that I could remove extraneous symbols from the key names such as: “ß”, “*”, and “Ü”. This would make it easier for users to type names of diseases they are interested in. More fine tuning of the keys would transform data points that are intended to be zeros into actual zeros (e.g. “ó” would become “0”). With the zeros listed, I could include these particular diseases in data extraction.

I really look forward to seeing and interacting with everyone else’s final projects! I know everyone put a lot of hard work, time, and energy into these projects. It is so great to be so directly involved with each person in this class through how class is structured. The opportunity to get to meet other students in the class and see their progress throughout the progress of the course is a luxury I have not had in my undergraduate classes, simply because I have never been in a class this small before. 

## Samples of code that I struggled with but soon after made breakthroughs with

```python
# This was the point where I decided to transition from creating a table to putting the data into a dictionary. The dataset is fairly messy and I had to include a lot of additional conditions so that extraneous data was not included in the total mix of diseases.
# Use this statement to parse out diseases that are rare
if float(new_data) > 25:
  # creating a new table and transferring the columns
  parts = data[0].split(",")
  this_disease = {"case count" : new_data, "rate" : new_data2, "category" : None}
  if len(parts) == 1:
    disease_annual_dict[parts[0].strip()] = this_disease
  elif parts[1].strip() == "Total" or parts[1].strip() == "Animal" or parts[1].strip() == "All serogroups" or parts[1].strip() == "All ages":
    # This is a total entry
    disease_annual_dict[parts[0].strip()] = this_disease
  elif parts[1].strip() not in ["Probable","Confirmed","Infant", "Other (wound & unspecified)","Age <5 years ∂", "Age <5 years","Indigenous", "Imported","Serogroups ACWY","Serogroup B","Unknown serogroup","Congenital *", "Primary and secondary","Acute","Chronic","invasive disease","Foodborne","Infant *"]:
    this_disease["category"] = parts[0]
    disease_annual_dict[parts[1].strip()] = this_disease
```

```python
# The transitions method was very useful. I did have to keep adding a lot of dictionaries and lists, but this particular method encapsulated all aspects of the data analytics tool and proved to be very useful.
# Here is where the user prompts are initiated. A while loop is place after the class is called so after going through the program once, it will loop back to the main menu.
p = Prompt()
input()
ans = 1
while ans != '6':
  ans = p.questions()
  ans2 = p.transitions(ans,disease_annual_dict,disease_month_dict,disease_race_dict,empty_list1,empty_list2,empty_list3,empty_list4)
  time.sleep(2) # I added this here because the while loop was going back to the main menu before some of the data was presented to the user. I thought this would keep it from getting confusing.
print("\n","Thanks for using this virtual analytics tool!")
```

```python
  # This function was used to determine the min and max case counts of the dataset - the latest addition to the program! Admittedly, it could probably be cleaner... 
  def min_max(self,use_dict,empty_list1, empty_list2, empty_list3, empty_list4):
    for key, value in use_dict.items():
      empty_list1 = [value["case count"]]
      empty_list2 = [key]
      empty_list3.append(empty_list1)
      empty_list4.append(empty_list2)
      d = max(empty_list3)
      e = min(empty_list3)
    max_index = empty_list3.index(d)
    max_disease = empty_list4[max_index]
    min_index = empty_list3.index(e)
    min_disease = empty_list4[min_index]
    print("The max is seen with: ", max_disease, "at", d, "case counts")
    print("The min is seen with: ", min_disease, "at", e, "case counts")
```

# Milestones Accomplished :trophy:

[x] The user will be able to ask for the rate or number of cases for a specific notifiable disease
[x] The user will be able to ask for help and receive instructions on how to use certain features of the program
	  - This is actually accomplished through the initial init function 
[x] The program will display charts for the rate of cases and number of reported cases for diseases for the year of 2016 and also broken down by month and racial group 
    - I initially didn't include the rate of cases but I figured out it was an easy fix. I think adding this is important to contextualizes the case count.
[x] The user will be able to identify the diseases with the highest and lowest reported cases in 2016.
    - I took out the part where I said I was going to list those that also didn't have any cases in 2016. That would be one of the improvements I make to this project.
[x] If time permits, the program may provide the user with an external link on the disease or a short blurb about the disease (this may be a bit **ambitious**, but definitely useful)
[x] The program will display a ~~table~~ dictionary of the data used if prompted by the user.
    - I wasn't sure if I was going to do this one because I didn't successfully format a table. I decided to just go with presenting this in the dictionary format. 

# The final product
<iframe src="https://trinket.io/embed/python3/551bc89caf" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

## The following are the Trinkets in order from oldest to newest of my project process

### Final Project Pt. 1 (for class 6/14)
<iframe src="https://trinket.io/embed/python3/c21ba37a07" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

### Final Project Pt. 2 (for class 6/18)
<iframe src="https://trinket.io/embed/python3/b9369ff4ac" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

### Final Project Pt. 3 (post-class 6/18)
<iframe src="https://trinket.io/embed/python3/b4867cad54" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

### Final Project Pt. 4 (for the Final presentation – listed again)
<iframe src="https://trinket.io/embed/python3/551bc89caf" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

