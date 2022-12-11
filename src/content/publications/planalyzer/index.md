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

Tosch's primary interests are in PL applications to data collection and analysis for social science domains. Her early work on [SurveyMan](http://surveyman.emmatosch.com) &mdash; a language and framework for designing, debugging, and deploying surveys &mdash; has won first place in the [2014 ACM student research competition at PLDI](https://src.acm.org/winners/2015), a best paper award at OOPSLA 2014, and a [2015 Outstanding Synthesis Award](https://www.cics.umass.edu/oaa2015) in the [College of Computer and Information Sciences](https://cics.umass.edu) at the [University of Massachusetts](https://www.umass.edu). Her recent work on [PlanAlyzer](https://github.com/KDL-umass/PlanAlyzer) &mdash; a static analysis tool for programmatically-defined experiments &mdash; was recognized as a [SIGPLAN research highlight](https://blog.sigplan.org/2020/09/01/2019-sigplan-research-highlight-awards/) in 2020 and was honored as a [Research Highlight](https://cacm.acm.org/magazines/2021/9/255047-planalyzer) in the September 2021 issue of the [Communications of the ACM](https://cacm.acm.org). 

<!-- Tosch has additionally worked in question answering (natural language processing), evolutionary computation, and explainable AI and has research interests in causal inference.  -->

Emma Tosch earned her B.A in English Literature from Wellesley College in 2008 before working at a healthcare IT start up. She obtained a post-baccalaureate certificate and M.A. in Computer Science from Brandeis University in 2011 before earning her PhD from the University of Massachusetts Amherst in 2020.