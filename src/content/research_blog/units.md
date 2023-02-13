+++
title = "Measurement Bias in Systems Experiments as Unit Misspecification: Part 1"
subtitle = "A review of Mytkowicz et al. 2009"
date = 2023-01-05T00:00:00Z
draft = true
+++

This past Fall I was thrilled to kick off some [new work]() supporting experimentation in sociotechnical systems as an aspect of software development. Inspired by some recent conversations with folks on the [SEARCCH project](), I turned my attention to experiments performed as part of artifact evaluation; while experimentation in sociotechnical systems is very challenging, I don't think it would be a stretch to say that we generally struggle with how to disseminate, compare, and evaluate experiments in code. As part of my thinking about how to better support experimentation in software, I found myself revisiting [Mytkowicz et al.'s classic paper]() on measurement bias in software systems. 

This blog post will be the first in a series that will (1) review the ASPLOS work from the lens of causal models, (2) discuss recent developments in the modeling of measurement bias, and (3) conclude with a proposal to reframe the observed bias not as an instance of measurement bias, but rather as an improper specification of _units_. <!-- more -->

The paper begins with an abstract that does not pull punches: 

> This paper presents a surprising result: changing a seemingly innocuous aspect of an experimental setup can cause a systems researcher to draw wrong conclusions from an experiment. What appears to be an innocuous aspect in the experimental setup may in fact introduce a significant bias in an evaluation.

So off the bat, what they are describing is a case where you _think_ you have a causal model of software behavior, but you don't. 

Now, if you are not familiar with causal models, one way to think about them is that they are a mathematical model containing _variables_ and proposed _relations_ between those variables. In some traditions these relations are the edge relation, while in others they are a functional dependency; the expression of the relation is equivalent for our purposes and 

This is not the definition of measurement bias; this is the diagnosis of the errors you see. It would be easy to infer that the definition of measurement bias is one where making a change to a variable not in the model causes a different effect distribution. However, this phenoenom in general is just a misspecification of the causal model and could be due to a variety of reasons (a bias typology). The diagnosis of measurement refers to a specific typology. 

# Introduction 
"Systems researchers often use experiments to drive their work: they use experiments to identify bottlenecks and then again to determine if their optimizations for addressing the bottlenecks are effective."
This is an exmaple of exploratory experimentation, followed by confirmatory analysis.

"We show that experimental setups are often biased."
Nit: a setup cannot be biased. Bias has a technical, statistical definition. What we would actually say is that the intervention captured by the experimental setup does not _identify_ the effect.

S    O
 \  /
   Y

Problem: we are fixing the value of S (not varying it). Varying O and observing a difference for some fixed value of S _is_ evidence of causation: E[Y| S = s, O = 0] =\= E[Y | S = s, O = 1]. The problem is that the values we acutally want are E[Y | O = 0] and E[Y | O = 1].

"Favoring S + O" is the selective choice of s such that E[Y| S = s, O = 0] > E[Y | S = s, O = 1].

It's weird to call it measurement bias because measurement bias typically refers to the instrument as a proxy for the value you actually care about. That is not what's happening here (and this is generally quite challening for software systems, where the environment and object of study are effectively the same).

why is this not measurement bias? parts of it are, but others are not. this is because we need replicates to overcome measurement bias, but there are elements of S we can actually intervene on. 

Components of S:
- UNIX environment size (E) (intervenable, measurable)
- alignment of stack allocated data (A) (not intervenable, measurable?)
- Link order (R) (intervenable, measurable)
- Code and data layout (L) (not intervenable, measurable) 

E -> A -> Y
R -> L -> Y




Here is a summary of the changes to the longer descriptions of each term; I am using the following key:

* `*` denotes "Same conditions as artifact"
* `?` denotes "Unknown"
* `-` denotes "Does not matter"
* `Diff` denotes "Must differ from artifact" 

| Ver | Term | Team | Meas. Proc. | Meas. Sys. | Context | Location |
|-----|------|------|-------------|------------|---------|----------|
| Old/New | Repeatable | * | * | * | * | * |
| Old | Replicable | Diff | * | * | * | * |
| New | Replicable | Diff | ? | Diff | ? | Diff | Diff |
| Old | Reproducible | ? | Diff | ? | Diff | 
| New | Reproducible | Diff | * | * | * | - | 

I will not be focusing on the role of precision or whether it is appropriate to include here. 
