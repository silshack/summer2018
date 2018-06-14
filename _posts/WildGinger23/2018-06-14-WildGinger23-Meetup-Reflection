---
layout: post
author: WildGinger23
title: "Database Meetup Reflection"
---

#Database Performance Analysis & Troubleshooting Methods

## Pre-Meeting headspace

I picked this meetup because I am taking databases in the fall and I am interested in learning more about them. I figured that having this high level overview of performance analysis and troubleshooting methods would be an interesting way to get an introduction to the concepts that we'll be discussing and studying in class. I'm going to try to take as many notes as possible focusing on vocabulary.
I have heard of SQL before and generally understand that databases are very important to archives. I would like to understand how the performance of a database can be analyzed, and learn about troubleshooting methods. We have certainly had issues with our PSDB Patron Services Database.
I think that the description of the event gives a pretty good idea of what the presentation will cover, however a lot of these terms are unfamiliar to me. Below is the description with a section about the event and speaker.

### Details

Have you heard about USE Method (Utilization - Saturation - Errors), RED (Rate - Errors - Duration) or Golden Signals (Latency - Traffic - Errors - Saturations)
In this presentation we will talk briefly about these different, but similar “focuses” and discuss how we can apply them to the data infrastructure performance analysis troubleshooting and monitoring.
We will use MySQL as example but most of the talk will apply to other database technologies as well.

### About the speaker, Peter Zaitsev:

Peter Zaitsev co-founded Percona and assumed the role of CEO in 2006. As one of the foremost experts on MySQL strategy and optimization, Peter leveraged both his technical vision and entrepreneurial skills to grow Percona from a two-person shop to one of the most respected open source companies in the business. With over 140 professionals in 30 plus countries, Peter’s venture now serves over 3000 customers – including the “who’s who” of internet giants, large enterprises and many exciting startups. Percona was named to the Inc. 5000 in 2013, 2014, 2015 and 2016.
Peter was an early employee at MySQL AB, eventually leading the company’s High Performance Group. A serial entrepreneur, Peter co-founded his first startup while attending Moscow State University where he majored in Computer Science. Peter is a co-author of High Performance MySQL: Optimization, Backups, and Replication, one of the most popular books on MySQL performance. Peter frequently speaks as an expert lecturer at MySQL and related conferences, and regularly posts on the Percona Database Performance Blog. He has also been tapped as a contributor to Fortune and DZone, and his recent ebook Practical MySQL Performance Optimization Volume 1 is one of percona.com’s most popular downloads.
Peter lives in North Carolina with his wife and two children. In his spare time, Peter enjoys travel and spending time outdoors.

## Experience at the Meetup

## Premeeting 6:45-7:15

The first thing that I notice about Peter is his accent. It is eastern European and on some words decidedly Russian. I don't have that much difficulty understanding him, but perhaps that because one of my favorite philosophy professors was Eastern European. I took Existentialism and 19th century philosophy from Marina Bykova.
There was a representitive for LifeOmic who discussed a few projects before the formal presentation. He talked about gremlin and another member of the group mentioned that a plugin by NeoFrage (sp) translates gremlin into Cypher.
Peter discussed a conference that I didn't quite get the name of it
There was a member that was discussing the startup AEO Analytics that mainly works with data analytics. The rep from LifeOmic was curious about investors and employees. 
The screens at the front that once had the wifi login were changed to two video feeds of the room before us.

## Introduction 

Chris started us off. Announcements DevosDay raleigh at the McKimmon center (NCSU) triangledevops twitter discount code (Chris is a speaker) Food by Hayes.
Hayes announced two open positions, Oracle cloud experience preferred with first, and Linux. Hayes is the only woman in a room of 20-30.
Chris says this is a monthly meeting. Asks if anyone is looking for a job, asks if anyone is hiring. SolarWinds and CargoSphere is hiring. HiringThing full remote Python and Ruby 2. LifeOmic is hiring.

## Presenter 7:15 - 8:15

Performance Analysis and Troubleshooting Methodologies for Databases. Peter Zaitsev of CEO of Percona is hiring. 

"Who here has worked with databases?"
"Who here hates databases?"
"You have to hate databases, its like your wife, I mean you have to love her but..."

Databases are frequent problem causers
1. Generally non-linear scalability 2. Complex 3. Often poorly understood by developers.

Performance work with databases - Troubleshooting, Capacity Planning(how much capacity your database has), Cost and Effiecency Optimization, Change Management

Points of view
BlackBox - Application Developer
WhiteBox - DBA OPS

Developer point of view
- Database as black box (My wife drives a car, she doesn't care how it works she just uses it to drive kids to school."
- I throw queries at it and it responds
- DBaaS brings this "promise" to OPS took"

BlackBox Success Criteria for Databases
- Availability
- Response Time (delay can be equivalent to down)
- Corectness
- Cost

Ops Point of view
- Load
- Resource Utilization
- System/Hardware Problems
- Scaling/Capacity Planning

Methodologies for Performance Troubleshooting

Typical default
Troubleshooting by Random Googling (may be fine for simple problems. May introduce security vulnerabilites.)

Problems
- Hard to assure outcome
- Hard to train people
- Hard to automate

USE (Utilization Saturation Errors) Method by Brandan Gregg
RED (Rate Errors(Rate) Duration)


### USE

Developed to troubleshoot server performance issues
Resolve 80% of problems with 5% of effort
OS specific checklists available

In one sentence - 

Resource - all physical server functional components
Utilization - the average time that the resource was buy serviceing the work 

(Peter is transitioning slides faster than I can type.)

USE Methods with software
Same basic resources apply. Additional software. Mutex Locks.

USE Method benefits
Proven track record, broad applicability, detailed checklists available.

USE Method drawbacks
Requires good understanding of system architecture.
Requires access to low level resources monitoring.
Hard to apply in Service "Blackbox" enviroments

Cloud Computing
Limits in place to isolate Tenants
Dynamic resource management
True "hardware" properties on Hypervisor level only

Understanding Queueing

Mandlebrot and fractal discussion

Many different levels
Process running on CPU - actually waiting on the memory
processing running from the user standpoint - may be put to queue due to CPU saturation
Disk requeest issued to EBS - can be waiting on network

Percona Monitoring and Management

100% free and open source
purpose build for open source database monitoring
based on leading open source projects - 

CPU Utilization
utilization is easy, but how do you measure saturation?

Normalized CPU load and Max CPU Core Utilization

Process view
Runtime processes and blocked processes

Physical memory
Memory utilization
especially for databases
attendant wanted to discuss cache memory and some specifics.

Virtual memory

Swap Activity
SSD not that big a deal

Disc Load
Write lead and read lead
read path and write path are very different.

Disk IO Latency
separate read and write. Measure latency for last hour and take average because of volitility.

Network "Utilization"
Network: Local
- errors from a device standpoint
Network: Global
- measure network retransmits. Retransmit retio is impactful for performance.

Lower level work done

MySQL Saturation
threads running - what query is being processed on mySQL level.
MySQL client thread activity.


###RED Method

Focus
- Microservices
- "Cattle not Pets"
- Mapping to Resources can be fluid

for every service check request check these are within SLO - Rate Error (rate) Duration (Distribution)

RED Method for Databases
- Looking at service level
- Looking at individual database servers
- can be applied to compontents/resources
- can be applied to individual types of queries

Drawbacks
- does not have as much tools and checklists support yet

Query response time
group by digest, look at count and latency (drill down and look at (1) how latency was changing (2) response time details)

Slow Queries summary

###Four Golden Signals

Monitoring Distributed Systems from SRE books

Latency - distribution not just an average
Traffic - how much demand is being placed on the system
Errors - error codes are easy, bad content is hard
Saturation - how full your system "capacity" forcast when possible

Four Golden signals and databases

L - query response time
T - number of queries of specific kind served
E - error codes
S - 

Methodology well tested by Google

Drawbacks

framework for monitoring

Takeaways

Great innovation in performance Analysis Methods
Significant Overlap - Looking at mainly the same things.


Percona

Open source databases - travel - Live conference in Frankfurt in November

Percona to support PostgreSQL

Thank you

### Q and A 8:15 - 

USE is proactive rather than reactive.

Prometheus and more

## Takeaways

###How did it go?

I think it went pretty well. As expected a lot of the details were over my head, but I was able to generally follow along and understand what the speaker was talking about. The atmosphere was welcoming and they provided free pizza. One thing that kind of made me step back and think was when the CEO of Percona made a joke about hating his wife. Diversity was on my mind after our discussion and I looked around the room and didn't see any women. It felt good to be exposed to this community and it was interesting to see how many older men were in attendance.

###What did you learn?

I don't think I learned much of value for INLS 523 Databases, however I didn't really expect to. I focused on trying to follow along in the discussion of the difference between Development and Operations, because I felt that that was a simple binary perspective I could generally understand. Some of the examples that the speaker gave made what he was discussing more intelligible.

###Would you find value in this kind of event after class?

I think I really would. I thought back to my experience digitizing reports for the NC Cooperative Extension Service. In every single one of North Carolina's 100 counties Farm Extension Agents and Home Demonstration Agents were assigned to hold meetings to teach people about farming, canning, and useful life skills in a community setting. What this meetup has really illuminated for me is the value of community learning. While there are bountiful resources online, in the future if I ever want to learn about a specific type of programming I will be sure to investigate engaging with the local community.

###How was the experience different from your expectations?

It less formal. It felt like at times that attendees were merely having a conversation. All in all it was just about what I expected from the description. A minor complaint would be that the speaker progressed through the slides at such a pace that he didn't expect people to be taking notes.

###Could you see yourself becomming a member of a professional community like this in the future? 

I could see myself becoming a member of a professional community like this in the future, but not this specific community. I appreciated the focus on open source, but I would probably attempt to seek out a community that is centered around digital archives, digitization, or web archiving.
