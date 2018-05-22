---
layout: post
author: rachelanniexo
title: "Rachel Anne's Customized Turtle"
---

Feel like skipping stones but no body of water nearby? Never mind! Choose your own water and wave colors in this interactive Trinket. 

<iframe src="https://trinket.io/embed/python/208f60779b?start=result" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

It took me a little while to figure out the dimensions of the circles. 
Here's the innermost wave:
```
#droplet1
tina.penup()
tina.setx(0)
tina.sety(-10)
tina.pendown()
tina.circle(20)
```

And here's the outermost wave:
```
#droplet3
tina.penup()
tina.setx(0)
tina.sety(-100)
tina.pendown()
tina.circle(110)
```

Do you see what they have in common? To keep them nested, I started each Tina-circle on the same x-coordinate and each circle has a radius of ten greater than their starting point.
