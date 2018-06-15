---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Project Update and revised plan"
---

I think I have made significant progress on my Final Project since starting. I successfully found a FASTA file that has multiple orthologs
(analogous genes) across species of a gene of interest, specifically *BRCA2*. *BRCA2* is a human tumor suppressor gene, and is highly conserved
across mammals. The protein BRCA2 is responsible for repairing DNA. Mutations in the gene *BRCA2* are highly predictive of breast cancer. 

My Python program should work for other files as long as they are in the FASTA format, which is pretty ubiquitous in the field, so I think
my tool can prove useful to others. 

After finding a FASTA file, I realized I needed to first align the sequences in the file before I could begin writing my Python program. 
To accomplish this I used the online multiple sequence alignment tool CLUSTAL. CLUSTAL also generates some analysis after alignment,
like the Percent Identity Matrix, so I saved this output so that later on I could compare my Python program's output for accuracy. 

After my FASTA file was aligned and ready, I could begin to write my Python program. I successfully opened and parsed the lines into 'readlines',
a list of the lines as strings. I had to become familiar with the format of a FASTA file. 
I identified that my identifying information for the sequence was in the lines that started with a carat, or '>', and went on to 
extract the Latin name of the model organism from these lines. 
All lines following the carat line, up until the next carat, were the sequence matching up to the Latin name. I had the Latin name act
as a key in a dictionary, and each line without a carat was appended to a list, which then I converted to as string; that sequence string
is the value to the dictionary's key.
Here is my code for parsing the lines and forming the dictionary:

```python
for line in file_lines:
  if line.startswith('>'):
    pos1=line.find('[')
    pos2=line.find(']')
    key=line[pos1+1:pos2]
    key=key.replace('_',' ')
    #print(key)
    seq_list= []
  else:
    line=line.rstrip()
    seq_list.append(line)
    sequence= "".join(seq_list)
    brca2_dict[key]= sequence
 ```
 
I then tested with a print statement, `print(type(brca2_dict['Mus musculus']))`, to make sure that the value type was indeed a string. 

Here are my revised milestones, with my progress so far marked: 

[X] Download an appropriate file from Ensembl with model organism’s sequences for a specific gene (most likely a FASTA file) 
[X] Align FASTA file with online multiple sequence aligner [CLUSTAL](https://www.ebi.ac.uk/Tools/msa/clustalo/)
[X] Copy Percent Identity Matrix from CLUSTAL's output for later comparison 
[X] Successfully open and read FASTA file
[X] Create a dictionary with the model organism name as the key and sequence string as the value
[] Write ONE comparison between two model organism’s string sequences
[] Figure out how to automate comparisons between every single value in the dictionary
[] Tabulate similarities over total length of sequences (all sequences should be of the same length once aligned)
[] Organize data into a readable table (read up on how to create tables/charts in Python)
[] Research other ways to visualize data using matplotlib

Here is a duplicate of my code so far below:

<iframe src="https://trinket.io/embed/python3/e41ffa34a1?start=result" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

- Are there any roadblocks ahead? Is there anything your group can do to help out?
  I think I am at one of the most challenging parts of my project. I need to figure out a way to compare a value from the dictionary with every
  other value. It would be really helpful if I could brainstorm this with my group. 
- Are your milestones ambitious enough? Make sure to include some stretch goals.
  I can research some other ways to compare sequences other than the pair-wise comparison. I think this would make my Python program
  even more useful to others if it incorportated multiple ways to compare sequences.
- Are your milestones too ambitious? Make sure to break down the unglamorous parts of coding into chunks that reflect the actual work to be done.
  My milestones get broken down into more detailed milestones as I work and encounter roadblocks. I think the visualizing data milestone
  will have to be broken down further once I get to researching the many powerful tools people have built to visualize data generated
  by Python.
- Are you able to keep to your plan? Looking back at what you’ve actually done, is the difference accountable to bad planning (i.e. not anticipating what needed to be done), bad execution (not doing it), or something else?
  I perhaps forgot that an unaligned FASTA file and an aligned FASTA file are very different, and forgot about this step, but otherwise
  I have been able to follow the milestones I wrote out for myself. 

Next, I have to figure out how to compare one value in my dictionary (which is a string) with itself and every othe value in the dictionary
(also strings). Then, I have to figure out how to compare the first item in one string, with the first item in the other string, etc. I
think regular expressions will be very useful for this part so I am going to read up on Dr. Chuck's Ch. 11: Regular Expressions. Elliott also
showed me a really cool tool that I think is going to be useful: [RegEx101](https://regex101.com/), which shows you the extracted string
AS you enter your regular expression! Really cool stuff. 
