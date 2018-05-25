---
layout: post
author: scylmartin
title: "scylarmartin's functional turtle"
---
There are a couple of problems in my code. I solved most of them, but there is one remaining there. Through this practice, I understand 
the concept of "argument, parameter" better. In addition, I have a more clear understanding of how to write a function with a return 
function involved. However, there is one problem remaining:
For exmaple: if tina has 2 friend, the original code will be
    #tina.forward(100)
    #tina.left(150)
    #tina.stamp()
    #tina.right(30)
    #tina.forward(100)
    #tina.left(150)
    #tina.stamp()
    #tina.right(30)
    #tina.forward(100)
    #tina.left(150)
    #tina.stamp()
The new code will be:
   #p1 = input("first parameter: ")
   #p2 = input("second paratmeter: ")
   #tina_movement(p1, p2)
   #tina_movement(p1, p2)
   #tina_movement(p1, p2)
In the new code, turtle will reset to the very original status, and the planned picture wont be drawed. I have no idea how to fix that right
now, but will think about it during the weekend.
Here's my link: <iframe src="https://trinket.io/embed/python/8d0c6e66f0" width="100%" height="600" frameborder="0" marginwidth="0"
marginheight="0" allowfullscreen></iframe>
