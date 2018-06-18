---
layout: post
author: WildGinger23
title: "Project Update and Stand-up Report"
---

## Finding Aid Query Program - Revisions and Plan

Here is what I submitted before class, "Finding Aid Query Program - FAQ Program V1.1"

<iframe src="https://trinket.io/embed/python3/f92953204e" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

While in class I worked on updating the above program in a new trinket

I began by working on the exit message. I wanted to have an option for the user to return to the menu. Something of a "Are you sure you want to quit?" In order to accomplish this I realized that I had to go back and make the while loop where almost everything is going on and put it into a function. After I got the main() function defined I began to try to see what I could add into it.

I created a main function and and axit function that called the main function within it in order to return the user back to the main menu like I wanted. I also ended up putting the prompt to select and open which file within the main function so the user can open different files in the same session.

Near the end of class I wanted to work on the first function and had a good conversation with Elliot about scope. I am going to read more about dictionaries to try to successfully use them to link to collection data. I hit a little bit of a problem when I realized that there subseries in two files but not in one. That means that the rows will be slightly different for one collection.

Here is what I had by the end of class, "FAQ Program V1.2"

<iframe src="https://trinket.io/embed/python3/552297e5f0" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

The next time I picked this up was Saturday morning. Unfortunately I was having some difficulty with Trinket, and the console was either stuck connecting /-\- or running /-\/-. I don't need to run my program to write code though right? I've been using the final project folder 

So I decided to save it to the final project folder and in doing so I noticed that there was an indentation error in V1.2 (and V1.3) that was being displayed. I commented out the code in V1.2 and saved it, then at the folder level saw another error. Due to the proliferation of errors I had to comment out a lot of code. Now I want to try to actually fix it in V1.3.

I realized that it was a problem with my connection. After a lunch break I resumed work around 3 and set at taking a look at the menu, and getting it so that the user has an option to switch between files from the main menu.

Here is what I had by the end of Saturday, "FAQ Program V1.3"

<iframe src="https://trinket.io/embed/python3/32ccc5b7a0" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>


When I picked back up work on Sunday I realized that I needed to start building the dictionary that I wanted to use for the first function, and try using it. Figured I may as well start a new version, V1.4

Windows decided to give me a ~1 hour break, by automatically starting an update. I ate some dinner and another glass of water. 	

I altered the structure of the code so that I can work on the functions in their own module. I also wanted to add more information for the user about how to type in the filenames, and what the collection titles are.

I guess I didn't fully test my recursive try except loop to handle bad data because it's not working. Once again in the frustrating loop of adding an element, or changing one aspect of the code only to have another part of the code no loger work. One benefit to this is that I gain a better understanding of how the flow of control operates.

Going to sleep now, I'm going to look at it tomorrow with fresh eyes and start with fixing the bad input loop.

Here is what I had after a weekend of coding, "FAQ Program V1.4"

<iframe src="https://trinket.io/embed/python3/f8454ab1e5" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Now here are my previous milestones

- [x] Import three .csv files that correspond to finding aids that I’ve created
- [ ] Detect data that causes errors “~,%,&,*, etc.”
- [ ] User can discover how many series are in a collection
- [ ] User can ask how many items are in a series
- [ ] User can search collections for specific terms

I didn't reach as many of the milestones as I would have liked over the weekend. I still have a lot of work ahead of me, but here is a more accurate list of the milestones for this project. At this point I think that implementing the 3rd function may be a little bit of a stretch goal. While it would be really useful in my day-to-day I don't currently have the knowledge of unicode characters required to know what would trigger errors while converting the data from .csv to EAD XML.

###Program Capabilities
- [x] Import three .csv files that correspond to finding aids I've created
- [ ] Reimport three .csv files with standardized columns
- [ ] Detect data that may cause errors "& ..." (Function 3)
- [x] Can use collection dictionary to display information about the collection
- [ ] Can use dictionary of dictionaries to display information about series
- [x] [ ] [ ] Have "Help" returns at each level of each functions.
- [ ] Visualize data via text printouts
- [ ] Custom class utilization

###User Abilitities
- [ ] User can discover the series that make up the collection (Function 1)
- [ ] User can ask how many items are in a series (Function 2)
- [ ] User can discover the dates for a series (Function 4)
- [ ] User can discover the dates for the collection (Function 4)

## Stand-up Report

- Are there any roadblocks ahead? Is there anything your group can do to help out?

The largest obstacle ahead for me is satisfying the custom class requirement of the final project. I'm not sure at this point how I could extend the turtle class, and when I try to consider creating a custom class from scratch I draw a blank. I also need to have a visual text printout.

- Are your milestones ambitious enough? Make sure to include some stretch goals. Are your milestones too ambitious? Make sure to break down the unglamorous parts of coding into chunks that reflect the actual work to be done.

I think they're ambitious enough, I have struggled with this course so most of these goals are stretch goals.

- Are you able to keep to your plan? Looking back at what you’ve actually done, is the difference accountable to bad planning (i.e. not anticipating what needed to be done), bad execution (not doing it), or something else?

I pivoted away from searching for strings to returning dates because there was already data in the rows that I could return relatively easily. This was largely due to bad (or just ignorant) planning. I have also had problems with bad execution, since much of the effort I have put forth thusfar has been getting the data and the structure of the program to a satisfactory state.
