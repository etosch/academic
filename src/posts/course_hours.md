---
date: 2023-02-13
draft: true
---

# Hours per Course

When it comes to teaching, we tend to view "support" in terms of staff or existing teaching materials. However, there are other factors that can help as well. One area where I, as a junior faculty member, would have liked to have had more support, is in understanding (1) how much time it was reasonable to expect students to spend on my courses and (2) how to select pre-requisites in service of ensuring that students would be able to devote the appropriate amount of time to the course.<!-- more -->

## PSet prep time is sometimes a poor proxy

My teaching experience prior to UVM was for a large required course at UMass. This course has copious resources associated with it and I had TA'ed it twice &mdash; I knew the rhythm. At UVM, all of the courses I taught, I taught _de novo_: I didn't have a reference syllabus and had to develop all of my materials from scratch. For two of these three courses, there simply weren't suitable materials available. For the third &mdash; an AI course &mdash; I was attempting to tailor the course to topics that could help me recruit student researchers, which meant that I taught a course that was a bit peculiar. That said, I was at least able to pull some problems from a logic textbook I liked and leveraged my past experience teaching discrete probability theory and its applications, which made generating quizzes, homeworks, and exams a little less time-consuming. 

I've been thinking about the challenges of generating course assignments recently. As part of my postdoc, I am learning Answer Set Programming (ASP); this is a kind of constraint/logic programming that is suitable for [capturing modal logics](https://arxiv.org/pdf/2108.04194). While I was teaching [my AI course](https://etosch.github.io/CS295A-S22/), I had a hard time finding suitable introductory programming exercises for students in modal logic. As I've been playing around with [clingo](https://potassco.org/clingo/), I've been porting a worksheet I developed for that course into ASP and it's gotten me thinking about how I might change that course, were I to teach it again. It's occurred to me that a notebook-based exercise "book" may have helped students connect with the material better. 

In any case, I'm bringing up the effort of generating materials because, in teaching 3x/week and starting the courses from scratch, I couldn't really use a function of the amount of time it would take me to solve a problem as a proxy for estimating the amount of time it would take a student to solve a problem. There are two reasons for this: in developing a particular problem set or programming exercise, I tried to balance course objectives and my knowledge of what students already learned. That is, I'd have to be very careful to not introduce any material or techniques that they hadn't seen yet. This sometimes meant more iteration on the problem sets than I'd expected. The other major reason it was a poor proxy was that I had limited ways to debug the wording &mdash; when we have textbooks with problem sets that someone else wrote, we are starting much closer to where the student is starting: someone else has already done all of the constraint satisfaction work to ensure that that problems are sequentially appropriate. Sometimes the problem are even marked with their difficulty. Thus, we can solve the problem ourselves and use a multiplier to estimate the time it will take the students and assign an appropriate amount of work. 

## Prep Time vs. Student Focus-Hours

When prep time is a poor proxy for estimating the time a student needs to devote to a course, what is? During my first course _de novo_ course, [Reinforcement Learning](), I tried to mimic the structure of the courses