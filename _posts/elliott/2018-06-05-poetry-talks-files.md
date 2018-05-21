---
author: elliott
category: notes
layout: post
title: "Poetry Code Talks; Let's learn files & dictionaries"
published: false
---

# Q&A


Some App stuff:

- Attributes for specific turtles to make buttons

# App clinic June 6th, 5-6:30pm

Stay after class for help with your Blackjack or Drawing apps.

# Python 3

We'll be using Python 3 in Trinket for all text-based work.  Remember your `print()` functions.

`sep=" "` lets you specify what the seperator between arguments is.  It defaults to a space.

`end='\n'` lets you specify what to do at the end of the print functin.  It defaults to a newline.

You can make anonymous Python 3 trinkets on Trinket for free.  If you want the convenience of saving your
Python 3 trinkets to your account, you should use code `inls560` to get our premium plan at a huge discount of $4.50 a month.

# (Quick) Poetry Review

You'll be adding file handling to your Slam poetry this week.  If your program needs updates, or you'd like to improve on it, **duplicate** it.  You may also post the updated version as a clearly updated update to your original post.

Basic architecture:

* Read user input to build a **list** of lines of poetry
* Use that list + a `for` loop to write user's input to screen, moving turtle for each line.

 -- Examples here --

Pairup & Merge up.

# Files

There are a few core actions you should be able to perform on files:

* Open them (Dr. Chuck)
* Search/extract information from them (Dr. Chuck)
* Build a data structure from them (not really Dr. Chuck)
* Explore your data (not really Dr. Chuck)
* Print a table from your data (not Dr. Chuck)

We'll do all of these today.

Something Dr. Chuck didn't cover: the `with` statement.  This is the Pythonic way to open a file:

```python
with open("sales.csv") as file:
  sales_raw = file.read()
  # Or, if you need lines:
  sales_lines = file.readlines()
```

Otherwise you'll have to open and close the file handler and it's a pain.

# Lists of Lists

Making a list full of lists gives you some interesting powers.  First, you can think of each item in
the main list as a row and each item in the interior lists as a cell/column.  As long as you keep the lengths
constant you've got what amounts to a spreadsheet, but in Python!

Here's how you can visualize a list of lists:

```
[ [... , ... , ...]
  [... , ... , ...]
  [... , ... , ...]
  [... , ... , ...]
  [... , ... , ...] ]
```

This one has five rows and three columns.

To work with lists of lists you'll nee lots of **slicing** and **indexing**.  Remember the `list[x:y:z]` syntax.

Let's get to work!  I recommend you read over questions 1-3 briefly and then go straight to exercise 4.  Let me orient you briefly.

# Dictionaries

Dictionaries are like simple mini databases.  They're great at keeping track of statistics.

Today we'll use **dictionaries of dictionaries** that will let you store and retrieve multiple stats about a state. This
is a core data analysis skill.


# Dictionary exercises today

We'll spend the whole class working **together** on your homework.  I'm here. Use me.
It's due 11:59pm tonight.  Finish in class or make plans to coordinate.

# Dictionary Exercises next time

More of the same!