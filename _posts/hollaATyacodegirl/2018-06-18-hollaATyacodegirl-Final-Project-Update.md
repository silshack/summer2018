---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Second Final Project Update"
---

I have made measurable progress since Thursday's class, but I have also run into some roadblocks that I need to think of a way to get
around. 

On Thursday, I had successfully read a FASTA file into my program and created a dictionary of aligned sequences, `gene_dict`, where the
key is the Latin name of the organism, and the value is the aligned sequence as a string. 
Since then, I successfully compared each pair of sequences base by base to get a percent similarity, using the following code:

```python
results_dict= {}
for key, value in gene_dict.items():
  name1= key
  gene_str1= value
  for key, value in gene_dict.items():
    name2= key
    gene_str2= value
    counter=0
    for pos in range(len(gene_str1)):
      if gene_str1[pos] == gene_str2[pos]:
        counter +=1
      else:
        pass
    percent_sim= counter/len(gene_str1) * 100
    results_dict[name1 + '-' + name2]= percent_sim
```
As you can see above, I created a second dictionary to store the results of the percent similarity analysis, `results_dict`. 

I also created the beginning of a User Interface (UI). Currently the UI lists all the Latin names of the organisms in the FASTA file, and
then asks the user to enter a Species 1 and a Species 2. The program then pulls the result that corresponds to those two species out
of `results_dict` and displays it to the user. 

I now have to work on how I will visualize that analysis. CLUSTAL, the multiple sequence alignment program that I used to align my sequences,
has a percent identity matrix output. The matrix essentially has all species listed in the rows and columns, and then has their percent similarity
in a matrix form. I should be able to do this as it is just a tab-delimited output, and I would very much like to give the user the option
to save the output into a new file. 
To do that, I need to learn how to save output into a new file. 

I also want to possibly give the user many options to compare the sequences, not just my own. I have found two modules,
[BioPython](https://biopython.org/) and the [ETE Toolkit](http://etetoolkit.org/), that would be very useful to my project, but unfortunately at this time Trinket does not support them. BioPython
gives multiple options to align sequences, including the CLUSTAL program I used to align my FASTA file before inputting it into my program.
I haven't explored it enough to find another option to my percent similarity analysis, but I'm sure there must be one in the module.
BioPython also has multiple options for drawing phylogenetic (evolutionary) trees, which is a prime way to visualize my data. ETE also has
some really cool options to visualize trees. It's a reach, but I would like my program to draw trees given the sequences in the FASTA file.
If I can't use BioPython and ETE, I need to explore what visualization options supported modules like PyGal could provide my program.

Overall, here are my milestones from Thursday:

* [X] Download an appropriate file from Ensembl with model organism’s sequences for a specific gene (most likely a FASTA file) 
* [X] Align FASTA file with online multiple sequence aligner CLUSTAL [X] Copy Percent Identity Matrix from CLUSTAL’s output for later comparison 
* [X] Successfully open and read FASTA file [X] Create a dictionary with the model organism name as the key and sequence string as the value 
* [] Write ONE comparison between two model organism’s string sequences 
* [] Figure out how to automate comparisons between every single value in the dictionary 
* [] Tabulate similarities over total length of sequences (all sequences should be of the same length once aligned) 
* [] Organize data into a readable table (read up on how to create tables/charts in Python) 
* [] Research other ways to visualize data using matplotlib

Here are the same milestones, with additional milestones added. Those complete are marked with an 'X':

* [X] Download an appropriate file from Ensembl with model organism’s sequences for a specific gene (most likely a FASTA file) 
* [X] Align FASTA file with online multiple sequence aligner CLUSTAL 
* [X] Copy Percent Identity Matrix from CLUSTAL’s output for later comparison 
* [] DOCUMENT how others can download FASTA file that works with my program, perhaps as comments at the top of the program,
or as a README file 
* [X] Successfully open and read FASTA file 
* [X] Create a dictionary with the model organism name as the key and sequence string as the value 
* [X] Write ONE comparison between two model organism’s string sequences 
* [X] Figure out how to automate comparisons between every single value in the dictionary 
* [X] Tabulate similarities over total length of sequences (all sequences should be of the same length once aligned) 
* [] Organize data into a readable table (read up on how to create tables/charts in Python) 
* [] Create a User Interface (UI)
* [] Add more options to UI, including possibly multiple options for alignment, but definitely multiple options for visualizing data.
* [] Research other ways to visualize data using BioPython, ETE, or the supported modules: matplotlib, numpy, PyGal
* [] Learn how to store output into a new file!
* [] INCORPORATE CLASSES into my program, possibly when visualizing data 


Roadblocks ahead: 
* More specfic modules like BioPython and ETE are not supported by Trinket, so I have to think of other ways to visualize the data
* I'm having difficulty finding modules that support other, more complex algorithms to compare sequences, but I would like to give the 
User that options
Solutions:
* Research using The Internet!, and A very helpful Professor!


Final Project Code Pre- Thursday's class:

<iframe src="https://trinket.io/embed/python3/e41ffa34a1?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Final Project Code Pre- Monday's class:

<iframe src="https://trinket.io/embed/python3/3d4281236d?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
