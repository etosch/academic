+++

template = "post.html"
title = "Surveyman: Programming and Automatically Debugging Surveys"
date = 2014-10-01

[extra]
abstract = "Surveys can be viewed as programs, complete with logic, control flow, and bugs. Word choice or the order in which questions are asked can unintentionally bias responses. Vague, confusing, or intrusive questions can cause respondents to abandon a survey. Surveys can also have runtime errors: inattentive respondents can taint results. This effect is especially problematic when deploying surveys in uncontrolled settings, such as on the web or via crowdsourcing platforms. Because the results of surveys drive business decisions and inform scientific conclusions, it is crucial to make sure they are correct.<br/><br/> We present SurveyMan, a system for designing, deploying, and automatically debugging surveys. Survey authors write their surveys in a lightweight domain-specific language aimed at end users. SurveyMan statically analyzes the survey to provide feedback to survey authors before deployment. It then compiles the survey into JavaScript and deploys it either to the web or a crowdsourcing platform. SurveyMan's dynamic analyses automatically find survey bugs, and control for the quality of responses. We evaluate SurveyMan's algorithms analytically and empirically, demonstrating its effectiveness with case studies of social science surveys conducted via Amazon's Mechanical Turk."

authors = ["Emma Tosch, Emery Berger"]
publication = "OOPSLA"
year = 2014

links = [
    { name = "PDF", link = "https://dl.acm.org/doi/pdf/10.1145/2660193.2660206?casa_token=IlttL-lZUjQAAAAA:DRH9O5VVpWof0jl2eZp-2C4jqj6Kl5pbglsmGOr6A7bvaq_AGiscGNcPVjqZAiHX1czIAsY1hrkVK" },
    { name = "Video", link = "https://www.youtube.com/watch?v=XnZjEjHlnCY" },
    { name = "Code", link = "https://github.com/SurveyMan" },
    { name = "BibTeX", link = "citation.bib"}
]


+++

