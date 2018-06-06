---
layout: post
author: ponderm
title: "Dictionary Exercise"
---
# Dictionary Exercise
## As done in class

This dictionary exercise was particularly complex. I appreciate that we got to go over this as a class. I don't think I would have been able to figure out a lot of this stuff otherwise. One of the trickiest thing for me to wrap my head around right now is the `state_dict[state]` format. I can think through this and determine the square brackets are referencing an index within the dictionary, but just looking at that doesn't quite register immediately. I also struggle to wrap my head around the following code:
```python
for state in states_list:
  print(state, "\t\t", states_dict[state])
```
I don't quite understand how `states_dict[state]` produces the list of values rather than the name of the states. I know that the code directly before it incremented the states, I just don't quite understand how `states_dict[state]` stored the values that were incremented.

I can definitely see how using dictionaries as opposed to lists can be useful, but I will definitely need some more practice with using dictionaries before I feel confident with these techniques.  

#### Here's the program I wrote out while we went over this in class:
<iframe src="https://trinket.io/embed/python3/3b37559c57" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
