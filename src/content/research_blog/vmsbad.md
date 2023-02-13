+++
title = "VMs are Bad, Actually"
date = 2023-02-09T00:00:00Z
draft = true
+++

Yes, this is clickbait-y: virtual machines aren't _bad_; just bad for Artifact Evaluation!<!--more-->


Naïvely, if I am just faithfully re-running all scripts, the "different team, same setup" shorthand says it's a reproduction. However, let's consider two scenarios:

1. The artifact is a repository of the experiments written in a scripting language, along with scripts to measure outcome variables, download benchmark suites, and analyze and plot the data. Imagine you can run everything with a `git pull && make`. 
2. The artifact is a 




If the artifact contains the raw data used to produce the graphs 

the results from running the “same setup” on my machine are necessarily going to be different from “on your machine.” In the community’s pursuit of reproducing results (e.g., by distributing the artifact in a VM in an attempt to make everything as close as possible to what’s reported in the paper), they are actually 


The focus on precision is fool-hardy given the variability and complexity of computing artifacts. 