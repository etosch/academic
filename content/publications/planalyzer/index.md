+++

template = "post.html"
title = "PlanAlyzer: Assessing Threats to the Validity of Online Experiments"
date = 2019-10-01

[extra]
abstract = "Online experiments have become a ubiquitous aspect of design and engineering processes within Internet firms. As the scale of experiments has grown, so has the complexity of their design and implementation. In response, firms have developed software frameworks for designing and deploying online experiments. Ensuring that experiments in these frameworks are correctly designed and that their results are trustworthy—referred to as internal validity—can be difficult. Currently, verifying internal validity requires manual inspection by someone with substantial expertise in experimental design.<br/><br/>We present the first approach for statically checking the internal validity of online experiments. Our checks are based on well-known problems that arise in experimental design and causal inference. Our analyses target PlanOut, a widely deployed, open-source experimentation framework that uses a domain-specific language to specify and run complex experiments. We have built a tool called PlanAlyzer that checks PlanOut programs for a variety of threats to internal validity, including failures of randomization, treatment assignment, and causal sufficiency. PlanAlyzer uses its analyses to automatically generate contrasts, a key type of information required to perform valid statistical analyses over the results of these experiments. We demonstrate PlanAlyzer’s utility on a corpus of PlanOut scripts deployed in production at Facebook, and we evaluate its ability to identify threats to validity on a mutated subset of this corpus. PlanAlyzer has both precision and recall of 92% on the mutated corpus, and 82% of the contrasts it generates match hand-specified data."

authors = ["Emma Tosch, Eytan Bakshy, Emery Berger, David D. Jensen, J. Eliot B. Moss"]

links = [
    { name = "PDF", link = "https://dl.acm.org/doi/pdf/10.1145/3360608" },
    { name = "Video", link = "https://www.youtube.com/watch?v=F0KdOOXKy1M"},
    { name = "Slides", link = "2019-10-23-OOPSLA-Planalyzer.pptx" },
    { name = "Code", link = "https://github.com/KDL-umass/PlanAlyzer"},
    { name = "BibTeX", link = "citation.bib"}
]

publication = "OOPSLA"
year = 2019


+++

