---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's FINAL reflection on FINAL Project!!!"
---
# Background

As I begin to pursue a Professional Science Masters in Biomedical Informatics, I am very interested in the data analysis of biological and biomedical
data sets. For this reason I chose to do a data analysis project for my final for INLS560. 
I'm really interested in the analysis of sequence data (DNA, RNA-seq) so for my data I chose a FASTA file. A FASTA format file is a text-based
format for representing either nucleotide or peptide sequences. Nucleotides or peptides are repesented using single-letter symbols, and insert/
deletions are represented by a dash, '-'.
FASTA files can be downloaded for genes for interest using the BLAST tool for NCBI, the National Center for Biotechnology Information,
[here](https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=BlastHelp]). 
I wanted to compare orthologues of an interesting gene across several vertebrate species. Orthologues are homologues (copies of a gene)
that are believed to be derived from the same ancestral sequence, and are not present in different species. 
In my program, the user can choose from several genes of interest to analyze: *BRCA2*, a human tumor suppressor gene, whose protein repairs
DNA; *MC1R*, whose protein is involved in regulating skin and hair pigmentation and is a significant cancer gene; and *LCT*, which has instructions for producing the enzyme lactase that breaks down the sugar in milk,
which was intrinsic to human evolution. We expect these genes: *BRCA2*, *MC1R*, and *LCT*, to be highly conserved in mammals,
but how do the orthologues compare in other vertebrates? 

# Milestones

Below are the final milestones for my project, with completed milestones marked off with an 'X':

* [X] Download an appropriate file from Ensembl with model organisms' sequences for a specific gene (most likely a FASTA file)
* [X] Align FASTA file with online multiple sequence aligner CLUSTAL
* [X] Copy Percent Identity Matrix from CLUSTAL’s output for later comparison
* [X] DOCUMENT how others can download FASTA file that works with my program, perhaps as comments at the top of the program, or as a README file
* [X] Successfully open and read FASTA file
* [X] Create a dictionary with the model organism name as the key and sequence string as the value
* [X] Write ONE comparison between two model organism’s string sequences
* [X] Figure out how to automate comparisons between every single value in the dictionary
* [X] Tabulate similarities over total length of sequences (all sequences should be of the same length once aligned)
* [X] Organize data into a readable table (read up on how to create tables/charts in Python)
* [X] Create a User Interface (UI)
* [ ] Add more options to UI, including possibly multiple options for alignment, but definitely multiple options for visualizing data.
* [X] Research other ways to visualize data using BioPython, ETE, or the supported modules: matplotlib, numpy, PyGal
* [X] Learn how to store output into a new file!
* [X] INCORPORATE CLASSES into my program, possibly when visualizing data
* [ ] Stretch Goal: have program generate phylogenetic trees for each file (would have to use third party modules BioPython or ETE)

# Final Project Trinket:

<iframe src="https://trinket.io/embed/python3/30c84ee3a9?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

# Discussion of Development

After downloading my FASTA files from BLAST, I had to align my FASTA files, as downloading from BLAST only gives the raw sequence. I externally used the online tool, CLUSTAL 
(which you can access [here](https://www.ebi.ac.uk/Tools/msa/clustalo/)). CLUSTAL is a multiple sequence alignment program. As described
on its website, CLUSTAL "uses seeded guide trees and HMM profile-profile techniques to generate alignments between three or more sequences".
To compare two sequences, one needs to use a pairwise sequence alignment tool. 
I discovered in my discovery of third party modules, that there is a module, BioPython, where you can align raw sequences in your own program.
Currently BioPython is not supported on Trinket, but in the future I would definitely like my program to be capable of aligning FASTA sequences
for the user, so that they do not have to externally prep the files. 

CLUSTAL, in addition to aligning sequences, generates some output. It creates a display called Percent Identity Matrix, where every
organism sequences is compared to every other sequence. This was in large part the inspiration for my program. I wanted my program to 
compare every sequence pair base-by-base and calculate percent identity. I wanted my program to output that percentage
when queried, output it to a table that can be saved as a separate file, and visualize these comparisons in some form.
CLUSTAL also outputs a phylogenetic (evolutionary) tree. To do that, I would have
to use a third party module like ETE Toolkits (see (here)[http://etetoolkit.org/]), which supplies the analysis and visualization of 
phylogenetic trees. It was a stretch goal of mine to include the ETE toolkit and visualize phylogenetic trees, but once this module
is supported I would definitely add the capability to my program as I think it would really enhance it. 

To read the FASTA file into my program, I had to first study the format of a FASTA file. Luckily for me, FASTA format files are quite 
uniform, so my program should be able to work for many files. Below is a shortened view of my FASTA file for *BRCA2*, once aligned:

>Mouse_[Mus_musculus]_ENSMUSP00000038576
ATGCCCGTTGAATACAAAAGGAGACCAACTTTTTGGGAAATTTTTAAGGCGAGATGCAGC
ACAG---CAGATTTAGGACCGATAAGCCTCAATTGGTTTGAGGAGCTTTCCTCAGAAGCC
CCCCCATACAATTCTGAACCTCCGGAGGAATCTGAGTATAAGCCCCACGGTTATGAACCA
...
>Human_[Homo_sapiens]_ENSP00000369497
ATGCCTATTGGATCCAAAGAGAGGCCAACATTTTTTGAAATTTTTAAGACACGCTGCAAC
AAAG---CAGATTTAGGACCAATAAGTCTTAATTGGTTTGAAGAACTTTCTTCAGAAGCT
CCACCCTATAATTCTGAACCTGCAGAAGAATCTGAACATAAAAACAACAATTACGAACCA

As you can see above, each sequence is labeled with a line that begins with a carat, '>'. The following lines are the sequence, until the
next carat. I wrote code to parse the FASTA file into a raw sequence dictionary. This was an interesting practice in reading (some very long) 
strings. I thought that I would have to use regular expressions. In the end I didn't have to, but I'm sure regular expressions would have
made my code much more elegant. The resulting dictionary had the Latin name of the organism as the key, and the string sequence as the value.
You can see that this was my first step in coding below, in the snapshot of my code, Phase 1:

<iframe src="https://trinket.io/embed/python3/e41ffa34a1?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

Later on, when I was thinking about incorporating classes into my code, I realized that this raw sequence dictionary only needed to be
created once. For that reason, I nested the code for the raw sequence dictionary under the `__init__()` for the class `dataset()`. I also
put under the dunder init statement, opening the file and then creating the results dictionary, since those also needed to occur only
once per data file.

The next dictionary I made was the results dictionary. This is where I had to compare every value of the raw sequence dictionary against each
other, base by base, and then calculate a percent similarity. The code to calculate the percent similarity was actually quite easy:
`percent_sim= counter/len(gene_str1) * 100`. Below is the code for the results dictionary:

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
    self.results_dict= results_dict
 ```
 
Previously in the class I had run into scope problems once I encapsulated by naked code into functions (this especially happened
on my Black Jack project). I was running into scope problems again when I encapsulated my code for the dictionaries, but then putting
the code for the dictionaries in the class dataset ACTUALLY helped me with scope! The problem I was having was that in order to build 
`results_dict ` I had to refer to the raw sequence dictionary. I solved this by putting at the end of my block of dictionary code,
`self.gene_dict= gene_dict` and `self.results_dict= results_dict`, THAT WAY these dictionaries were built in attributes of the object
dataset! And other built-in functions, which ended up being my options on the user interface, could refer to these dictionaries too! 
That was when a light-bulb went off for me on the usefulness of classes, which I had honestly struggled to see before outside the context
of the `turtle` module we had used in class. 

## User Options

After I created the results dictionary, I thought, how do I want the user to be able to access these results? That's when I began constructing
my User Interface (UI) options:

Option 1: In my first option, I wanted the user to be able to input two different species name, and the program would return the percent identity. It
sounded simple enough, but the keys in my results dictionary were in the format 'Speces 1 name- Species 2 name' so I had to do some
string parsing. I possibly made it difficult on myself by constructing the results dict in this way, but I made it work. 

Option 3: I will briefly jump to my third option. I wanted to output a table that showed all the possible organism comparisons in one view, and
I wanted to output this 'table' into a new file. To accomplish this, I actually created a dictionary of dictionaries! I learned that to 
call a specific value, I would you two indeces. I was really excited by this because I had heard about the possibility and power of
dictionaries of dictionaries, but I couldn't really wrap my head around how to construct them or how to use them. And here I was in the 
final project, using a dictionary of dictionaries as a solution to creating a table/matrix! It was all very exciting. ALSO exciting was that
I learned how to print my output into a new file using the `sys` module from a stack-overflow post (see (here)[https://stackoverflow.com/questions/7152762/how-to-redirect-print-output-to-a-file-using-pyth])
Here is the code that I used to print my table into a new file:

```python
    orig_stdout = sys.stdout
    f = open('Percent_Identity.txt', 'w')
    sys.stdout = f
    
    for key in sorted_species_list:
      print(key, '\n', species_dict[key], sep= "\t")
    
    sys.stdout = orig_stdout
    f.close()
```

My understanding of this code is that the variable orig_stdout is set equal to sys.stdout, the a new file of the name Percent_Identity.txt
is created, and sys.stdout writes to file, f. Then my for loop prints what it prints, and afterwards sys.stdout is closed out, and the file
is closed. My understanding of this code may not be perfect, but it was really exciting to learn something as useful as printing into a 
new file! Now I understand a limitation of this code: every time the program is run on a new gene, the file will overwrite itself. In this
way it is up to the user to save the file as a unique filename. I will write some comments in the code and the UI to remind the user to do so. Overall,
I think Option 3 was a success. I learned a lot from this use of the program. 

Option 2: Option 2 was to be my graphical output. I ended up not being able to use the third party modules BioPython or ETE to create
phylogenetic trees, *yet*, 
so I in place explored matplotlib. I ended up making a pretty simple bar-graph, however, it took me a very long time to understand how
I could get a dictionary to fit the arguments of the bar graph. Really, what I was hung up on, was that I had started by wanting to use
a histogram. I was enlightened by my professor, however, that histograms are meant to visualize distributions across a numerical range. 
I was trying to graph essentially `results_dict`, which had a string as a key and then a percentage. I decided to switch to a bar
graph and that worked much better. Because the keys of `results_dict` are still a bit unwieldy, labeling the graph has proved a challenge,
but I will try to clean it up for my presentation. Essentially, several bar graphs can be made (equal to the number of organisms in the
FASTA file). The user can input which species they want to compare to as the base-line (say, Homo sapiens), and the graph will produce 
the percent match for all other species to that base-line.
In graphing, a real difficulty I ran into was the constant reminder that dictionaries are not in any particular order!!! It made labeling
the bars separately next to impossible. I am still working with the function `sorted()` to at least have rhe same view of the sorted dictionary
for the order of the bars and the x axis labels.

## User Interface (UI)

I created my UI using a while loop, the infinite loops in Python. I had to instantiate an instance of the class `dataset()` first,
so you see `GENE= dataset()` at the very beginning. All options are built-in to the class dataset(). I'm not certain that this is the best
solution to my program, but it's what worked for me. 
Here is a copy of the code for my UI. I included a 'Help' option with some read only text that I need to make more comprehensive, but
I thought that the menu options were pretty self-explanatory. 
I also nested what used to be the naked code of the UI in a main() function, so that is the only call you see at the bottom of the main.py
tab. 

# Thank You!

I hope that my reflection helps you better understand my code. Overall, I really see the merit in working on big project likes this. I learned
a lot very quickly. I cemented concepts from class, like dictionaries and classes. I did not have a firm grasp of those concepts before, 
and ended up relying on them quite heavily in my final project. I understood the power of dictionaries much better, and got a glimpse
into the power of classes. I also learned many things that we did not go over in class: like how to print into a new file, and 
how to use matplotlib to visualize data. I hope to continue to learn new things about Python after this class as well, and continue the
trajectory my final project set me on. I even hope to continue to add options to this program, as the way its set up makes it pretty easy to. 
I hope to explore data visualization a lot more, and maybe even take a class on it. I definitely hope to take as many more Python courses
as possible in graduate school. I really enjoy the programming language, and want to become more proficient. 

Thank you to Elliott for being a great professor! This class certainly was a lot, and I thoroughly enjoyed it.

Cheers,
:fire: Halina :fire:



