---
layout: post
author: WildGinger23
title: "Queen Anne Treasure Hunt"
---

## Queen Anne Treasure Hunt
### By WildGinger23 or Bennett or Ben

I finally purchased Trinket premium, and attempted to use Python 3 however I encountered some unexpected difficulties and had to switch back to regular Python

This is the error message I recieved

Traceback (most recent call last):
  File "/usr/lib/python3.6/tkinter/__init__.py", line 37, in 
    import _tkinter
ModuleNotFoundError: No module named '_tkinter'

During handling of the above exception, another exception occurred:

```
  Traceback (most recent call last):
  File "/tmp/sessions/e820813b6d5e52af/main.py", line 1, in 
  import turtle
  File "/usr/lib/python3.6/turtle.py", line 107, in 
  import tkinter as TK
  File "/usr/lib/python3.6/tkinter/__init__.py", line 39, in 
  raise ImportError(str(msg) + ', please install the python3-tk package')
  ImportError: No module named '_tkinter', please install the python3-tk package
```

So I reverted to using regular python, and here is my treasure hunt game "Queen Anne Treasure Hunt"

<iframe src="https://trinket.io/embed/python/97e7de94c3" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

The namesake of this trinket is Blackbeards ship, Queen Anne's Revenge, which was found somewhat recently near the Beafort inlet.

I made the background change color each click to represent the ocean changing color due to weather and whatnot
