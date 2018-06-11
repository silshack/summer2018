---
layout: post
author: hollaATyacodegirl
title: "hollaATyacodegirl's Final Project Idea and Work Plan"
---

[Ensembl](http://useast.ensembl.org/index.html) is an online genome browser for vertebrate genomes with many powerful tools. One of them, BLAST, allows you to search for a DNA sequence
for a gene of interest in a model organism. You can actually download a file of model organisms and their homologues (different versions of
a conserved gene) for a gene of interest. 
BioMart is a data-mining tool that allows you to extract custom databases from Ensembl. I would like to extract sequence alignments for homologoues for a gene of interest in vertebrates 
(for example, Pax6 is instrumental in the formation of vertebrate eyes), perhaps along with some information about the gene's expression. 
I am not sure, but I may need to align the sequence files after I extract/download them from Ensembl using a multiple sequence aligner tool
like [CLUSTAL](https://www.ebi.ac.uk/Tools/msa/clustalo/). CLUSTAL is written in C++. 

What I'd like to do with this file of gene homologues is write a program in Python that reads the file and calculates the percent match 
between homologues in related species. This program will require a lot of working with strings, as each aligned sequence will be a long string of the characters
'A','G','C','T' for the four nucleotides, and '-' for gaps/deletions between species. 
My program would create a chart, with the species in each row and column. My program will be making pair-wise comparisons, so row and column
for homo sapiens should yield a 100% match. Each match will be expressed in percent. 
I know that CLUSTAL creates such tables in order to draw phylogenetic trees (gene relationship trees). I believe CLUSTAL calls this the
Percent Identity Matrix. I can therefore compare the accuracy of my Python program to CLUSTAL's output.
My Python project will help me better understand how the code behind CLUSTAL makes comparisons between homologues. 

The following are some basic milestones for my Final Project:

* Download an appropriate file from Ensembl with model organism's sequences for a specific gene (most likely a FASTA file)
Python program:
* Successfully open and read FASTA file, perhaps creating a dictionary with the model organism as the key and sequence string as the value
* Write ONE comparison between two model organism's string sequences
  - Tabulate similarities over total length of sequences (all sequences should be of the same length once aligned)
* Figure out how to automate comparisons between every single species in the file 
* Organize data into a readable table (read up on how to create tables/charts in Python)
