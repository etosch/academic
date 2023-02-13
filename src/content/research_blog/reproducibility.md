+++
title = "Reproduction vs. Replication"
date = 2023-02-09T00:00:00Z
draft = false
+++

In 2020 or so, ACM [swapped](https://www.acm.org/publications/badging-terms) its [definitions of reproducibility and replicability](https://www.acm.org/publications/policies/artifact-review-and-badging-current) to be more in line with the broader social sciences community. I see the reasoning for the swap, but I don't think that the new definition is quite right either. The crux of the issue is that definitions both communities are using are a shorthand that doesn't map appropriately across communities. <!-- more -->

> As a result of discussions with the National Information Standards Organization (NISO), it was recommended that ACM harmonize its terminology and definitions with those used in the broader scientific research community, and ACM agreed with NISO’s recommendation to swap the terms “reproducibility” and “replication” with the existing definitions used by ACM as part of its artifact review and badging initiative. ACM took action to update all prior badging to ensure consistency.

[Prior to 2020, the ACM used the following definitions](https://www.acm.org/publications/policies/artifact-review-badging); we only produce the shorthands below, but discuss the longer text descriptions at the end of the blog post. 

* **Repeatable**: same team, same experimental setup<br/> _For computational experiments, this means that a researcher can reliably repeat her own computation._
* **Replicable**: different team, same experimental setup<br/>**Old:** _For computational experiments, this means that an independent group can obtain the same result using the author's own artifacts._<br/>**New:** _For computational experiments, this means that an independent group can obtain the same result using artifacts which they develop completely independently._
* **Reproducible**: different team, different experimental setup<br/>**Old:** _For computational experiments, this means that an independent group can obtain the same result using artifacts which they develop completely independently._<br/>**New:** _For computational experiments, this means that an independent group can obtain the same result using the author’s own artifacts._

So far as I can tell, the only [argument](https://collegeville.github.io/Scribe/data/CompatibleTaxonomyReproducibility.pdf) for the swap that I’ve found has been that “this is how things have been done in most other fields” and to facilitate communication. While I agree that this is important (esp. as someone who works with social scientists!), I believe that the there is a strong semantic foundation for reconsidering how we communicate the definitions that does not rely on the shorthand above. This foundation relies on how computing generates experiment **replicates**.

# Reproducibility, generally

A longer explanation: the dominant definition of **reproducibility** is that a different team runs the same experiment (in computing, same code; in non-computational contexts, same high-level experimental procedure) over the same data. I'd note that there is already some ambiguity in the terminology, since "experiment" can refer to each of the following, increasing scopes:

* Just the treatment assignment procedure.
* Just the data collection procedure (i.e., treatment assignment + logging covariates and outcomes).
* The experimental task (i.e., data collection + analyses)


The “same data” argument is important not for its surface value, but because that data was produced over a fixed set of **replicates**. Replicates are related to the notion of **units**, which have the _extremely helpful definition_ of being "one of something." Context gives units a greater meaning: they are things that we _do  something to_, e.g. **analyze** functions of, **randomize** into treatments, or **experiment** within or on. I won't get into the specifics here, but when we hope to generalize beyond the specific units participating in our experiment, we need to expand the set of units via _replication_. Notably, this could mean selecting a sample from a population of interest (e.g., website users in an A/B test), but it could also mean replicating the experimental context (e.g., plots of soil in an ecology experiment). Thus, _replicates_ is a broader, more general term than what we typically think of as **sampling**.

When a social scientist “reproduces” an experiment, they are essentially auditing an experiment in service of **reproducing the result**. 
Furthermore, I'd argue that in social science, the result folks care about is whether...
<center>

```
----------------------------------     
| the data collection procedure, | (A) 
----------------------------------     
|
V
----------------------------------     
| the actual data collected, and | (B)
----------------------------------     
|
V
----------------------------------     
|     the analyses performed     | (C)
----------------------------------     
|
V
----------------------------------     
|    support the **findings**    | (D)
----------------------------------     
```

</center>

...stated in the paper. Re-running data collection is intrinsically about replication (which we are going to punt on for now). Let's assume that the authors collected the data faithfully according to the reported procedure.

In a world where all the relevant data is digitally stored and analyzed, we can see how "reproduction" essentially refers to running the same scripts over the same data. Sometimes doing so reveals choices (e.g., [excluding certain data](https://www.theatlantic.com/national/archive/2013/04/umass-student-exposes-serious-flaws-harvard-economists-influential-study/316138/)) that may invalidate the previously reported results. Prior to the widespread availability of statistical software, analyses had to be performed manually, so researchers were essentially hand-calculating the outcomes using the procedures described in papers, using the original data. 

Thus we can see how "different team, same setup" makes sense as a shorthand for reproducibility; we are focusing on the integrity of (C)->(D), given (B).

# Replicability, generally

Similarly, when a social scientist **replicates** an experiment, they are producing new data, specifically by collecting a new sample and are thus operating over _a different set of replicates_. If the experiment ocurred entirely in the digital space (e.g., on Amazon's Mechanical Turk) and each step of the procedure is written in executable code, someone could feasibly press a button to replicate (A)->(B)->(C)->(D), where the integrity of this inference chain depends on (1) nothing crashing, and (2) the chain (C)->(D) comporting with the community's understanding of the variability of the outcomes being measured. 

Note that in a replication, we _expect_ to not reproduce findings _exactly_. This is due to the variability that caused us to replicate in the first place! 

Strictly speaking, when a social scientist re-runs an experiment - especially if that experiment is not online — they may or may not use the same procedure, so the requirement that the code be the same typically isn't there; it need only comport with the high-level data collection procedure. For example, treatments that were randomly assigned in the original study must also be randomly assigned in the new one. 

The fundamental problem of causal inference is that we can only ever observe one treatment condition per replicate at any one time. Due _carryover_ effects, maturation, and other time-realted factors outside of our control, social scientists often cannot run the same experiment on the same unit (espeically if that unit is a person!) twice. This differs from how we have classically thought of computing experiments, where we can "reset the universe" at will. Thus, in social science, any time you collect new data, you are necessarily operating over new replicates, in a new setup (either explicitly, or Ship of Theseus-style). 

One of the principles of causal reasoning is that because the assignment mechanism must be unbiased, it does not causally influence outcome. Therefore, so long as (1) independence of assignment holds and (2) any preconditions for the analyses they intend to run holds (e.g., the same set of variables is recorded). Thus we might think of replication as either

1. (C)->(D) given (A)->(B'), or 
2. (C)->(D) given (A')->(B')

Thus, it makes sense that when social scientists say “different team, same setup” they mean reproduction...because no new replicates are being generated! Similarly, when social scientists say “different team, different setup,” they mean replication because a different setup in traditional offline social science contexts requires identifying new replicates and generating new data. 


# Where these definitions break down in computing

My argument is that oftentimes while the setup of a system under test during artifact evaluation is “the same,” the system on which reviewers are running the “reproduction” is actually itself a replicate! Consider the [famous -O2/-O3 optimization example](https://dl.acm.org/doi/pdf/10.1145/1508284.1508275?casa_token=27rz4vq8OvEAAAAA:gDJJZ7Vzfl-mjwjKMCTQbwWclz222M5XDmt8p0pqzEYwfphK--Qfd5B5Ulh6CMgb8zTtQdATfWE) as our canonical systems performance comparison and suppose that I run the same scripts on the same benchmarks; if I am re-running these studies locally, am I running a reproduction or a replication? 

Let's start with the assumption that we have the original outcome (e.g., timing/performance) data that appeared in the paper. Using the classical definitions of reproduction vs. replication, a strict reproduction would only re-run the data analysis for the original system, not generate new data locally! This follows the letter of what a reproduction means...or is it?

No matter how many possible effect modifiers might be controlled for, at the end of the day, these sorts of papers are by and large being run on **just one replicate**, which makes them completely incomparable to reproduction studies in the sense that other fields mean the term. Even without the replicate terminology, I'd argue that most competent researchers in our field know intuitively that merely analyzing one machine's performance numbers is the moral equivalent of waiving a paper through on "runs on my machine" (where "my" refers to the author!). 

So what _is_ reproduction, in this context? Well, I'd argue that reproduction is not yet meaningful for this kind of study! Why? Because the study is in need of replicates and any manner of re-running the experiment on a different machine, such that that different machine is an appropriate context (e.g., not a [LISP Machine](https://en.wikipedia.org/wiki/Lisp_machine)) and the experimental conditions are the same counts as a replicate, i.e., the different machine is itself a new replicate, producing new data!


# Reality in Computing

I suspect that if we, as a community, were to explain to other experimental/computational scientists that we write papers on the basis of results from an single machine, they would be horrified. So is our entire field screwed?

Despite my dire tone, I'd emphatically say: No! We have a unique problem in computing where it can be both infeasible and (with high confidence) unncessary to replicate experiments at the scale we see in other sciences. For example, it may infeasible to obtain many copies of computers having representative workloads to test the kind of systems experiments we might want to run. One could argue that the availability of cluster computing makes this task easier. On the other hand, a cluster may not be a representative sample of system state. Perhaps instead we have every student in a lab or classroom run the same experiment in service of replication, prior to artifact evaluation?

Enforcing behavioral change is hard. I'd argue that there is additional value to Artifact Evaluation beyond the awarding of badges - evaluators can function as _active research participants_, contributing their measurements as replicates to the paper itself!

<!-- # Conclusion -->

<!-- Due to the nature of computing experiments, I am not entirely sure that "reproduces" and "replicates" are meaningful qualifiers at present.   -->