# Flatiron CCN Software workshop @ SfN 2025

![image](/assets/sfn2025-banner.svg)

#note: welcome everyone to the CCN software workshop! we're excited to have you here. I'm Billy Broderick, one of the members of the neuroRSE team. Before we get started, I'm going to have the speakers and TAs introduce themselves. then we'll go around and have everyone introduce themselves. I'll finish up by giving an overview of our schedule, and then we'll get started!

but before all that --- couple quick notes:

- we're planning on taking some photos at this workshop, which we'll post on twitter or our websites. if you don't want your photo included there, just let one of us know
- has everyone run setup.py? did they see my slack message yesterday about `pip install -e .`?

---

## Everyone on the slack?

--- 

## Everyone installed and ready to go?

```
cd path/to/ccn-software-sfn-2025
git pull
conda activate ccn-sfn25 # or however you activate your python environment
python scripts/setup.py
python scripts/check_setup.py
```

---

## What is Flatiron?

<div data-animate data-load="/assets/fens-2024/flatiron.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#g715", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "0"} ]}
]} -->
</div>

#note: so apologies to those who know already, but I thought I'd take a moment to explain who we are. We are employees of the Flatiron Institute. If you've heard "Flatiron" before, you're probably thinking of this iconic building in Manhattan, the Flatiron Building

**click**. unfortunately, we're not in that building. we're about 2 blocks from there -- the neighborhood around this building is known as the Flatiron district, hence the name. I think every employee goes through a moment of disappointment when they realize they won't be working here. we have interns every summer, and a fair number of the interns every summer show up at the Flatiron building and were very confused. especially because the building is currently empty, due to some weirdness over the ownership

---

## The Real Flatiron Institute

![image](/assets/fens-2024/flatiron-institute.png)

#note: we are part of this Flatiron institute, which is part of the Simons Foundation. the Simons Foundation is a private foundation whose money comes from Jim Simons, a mathematician and hedge fund billionaire who recnetly passed away. it funds a variety of projects in the maths and sciences, especially computational research, and the Flatiron institute is the in-house research center.

---
## The Real Flatiron Institute

![image](/assets/fens-2024/flatiron-centers.png)

#note: Flatiron has five centers, one each for computational astrophysics, biology, mathematics, neuroscience, and quantum physics, plus the scientific computing core, who supports the cluster and other computational infrastructure that the other centers use.

---
## The Real Flatiron Institute

![image](/assets/fens-2024/flatiron-ccn.png)

#note: Mots of the speakers and TAs here are part of the Center for Computational Neuroscience, the newest center at Flatiron, which has four research groups doing different types of computational neuroscience work, with grad students from NYU, postdocs and research scientists, along with summer interns.

---
## The Real Flatiron Institute

![image](/assets/sfn-2025/neurorse.png)

#note: And most of the speakers you're going to hear from over the next two days are from the neuroRSE, or research software engineering, group within CCN. We're a group of full time research scientists whose only job is to build and maintain open source python packages for neuroscience research, including pynapple and nemos.

---

## CCN Software

**INSERT GRAPHIC FROM LUCY**

---

## Workshop staff

![image](/assets/sfn-2025/speakers.svg)

#note: Okay, with all that out of the way, let's introduce who's here for this workshop. These are the people you can ask questions to if you have logistical or technical problems. I'm going to have us all go around and introduce ourselves briefly, saying who we are, where we are, what we work on, and one non-science fact about ourselves.

Since I'm standing up here, I'll go first: I'm Billy Broderick, I'm one of the members of the neuroRSE group I just mentioned. I'm one of the developers for nemos, and I'm the main developer for plenoptic, which we're not actually discussing here, but is a package for generating stimuli to better understand computational models of perceptual systems. If you're interested, happy to talk more about this, come find me. My non science fact is: I'm actually recently back from parental leave; I have a 15 week old daughter at home. so I'm really looking forward to getting a full nights uninterrupted sleep while I'm Vienna. And I have about a million photos, if anyone wants to see.

Okay, let's go through everyone else from top left to bottom right: Jessica?

---

## Introduce yourselves!

### Name, Lab, What you work on
### One non-science fact about yourself

#note: Now let's go through and introduce all the participants. Let's start at the front here and we'll snake our way back.

---
## Day 1

| Time           | Event                                                                  |
|----------------|------------------------------------------------------------------------|
| 9 -- 10am      | Breakfast                                                              |
| 10 -- 11am     | Welcome and introduction to data standards                             |
| 11 -- 11:30am  | Coffee break                                                           |
| 11:30am -- 1pm | Pynapple core                                                          |
| 1 -- 2pm       | Lunch                                                                  |
| 2 -- 3:30pm    | NeMoS core                                                             |
| 3:30 -- 4pm    | Coffee break                                                           |
| 4 -- 5:45pm    | **Group project**: Fit head-direction population with Pynapple & Nemos |
| 6 -- 8pm       | Dinner                                                                 |

#note: Excellent. so, up next, we're going to hear from Heberto talking about the NWB data standard, then the rest of the day will be Guillaume and Sarah Jo talking about pynapple, alternating between presentations and hands-on exercises.

if you don't have your installation working now, come find one of us at the coffee break so we can get you ready to go for the rest of the day! please!

---
## Day 2

| Time           | Event                                                              |
|----------------|--------------------------------------------------------------------|
| 9 -- 10am      | Breakfast                                                          |
| 10 -- 10:30am  | Plenoptic advertisement                   |
| 10:30 -- 11am  | Pynapple advanced                                                  |
| 11 -- 11:30am  | Coffee break                                                       |
| 11:30am -- 1pm | **Group project**: Theta phase-precession with hippocampal data    |
| 1 -- 2pm       | Lunch                                                              |
| 2 -- 3:30pm    | NeMoS advanced                                                     |
| 3:30 -- 4pm    | Coffee break                                                       |
| 4 -- 6pm       | **Group project**: Fitting Visual dataset from the Allen Brain Map |
| 6 -- 8pm       | Dinner                                                             |

#note: tomorrow is all Generalized Linear Models, all day. We'll start off with Edoardo giving an conceptual overview of the GLM, then I'll walk you through a simple example with some data from the Allen Brain Observatory, Edoardo will come back to walk you through a more involved example with head-direction tuned neurons, then I'll finish the day by discussing how to use nemos with scikit-learn to do model selection and cross-validation

---

## Please interrupt us

- Ask questions. <!-- .element: class="fragment appear" -->
- Even if you think your question is dumb. <!-- .element: class="fragment appear" -->
  - (It's not.) <!-- .element: class="fragment appear" -->
- If you don't understand something, you're not the only one. <!-- .element: class="fragment appear" -->
- We have a broad range of experiences here. <!-- .element: class="fragment appear" -->

#note: one last thing. we're covering a lot of ground, but this workshop works best when it's interactive: we'll be doing a good amount of standing up here and talking, but this really works best when you ask us questions. So please: **click**

We understand how the software works and are very comfortable with python, and we've given this or similar presentations multiple times. we have done our best to not make this accessible, but it is certain that at some point, we will forget to explain something, or we'll present something in a way that is unclear. please -- if something is unclear, ask us.

even if you think your question is dumb. because it's not -- if you don't understand something, you're not the only one. on that note, I'm most directly talking to the senior folks in the audience here -- if you're a postdoc or a senior grad student, we're counting on you to model this behavior for the more junior folks. because we all remember feeling too self conscious in lab meeting to ask a question.

we have folks with a range of neuroscience backgrounds and programming/python skills here. we've tried to pitch the material at the right level so that everyone can follow along, but, as those of you who teach know -- that's hard. so please let us know if you don't understand! 

---
## one link to rule them all

[https://neurorse.flatironinstitute.org/workshops/sfn-2025/](https://neurorse.flatironinstitute.org/workshops/sfn-2025/)

#note: Finally, I'm going to leave this up here for a bit. You've gotten this link on the slack, you've gotten this in your email, but one more time. This page has links to the slides of all the presentations you'll see, as well as to the workshop schedule and the github page that has the setup instructions and all the notebooks we'll be working through on this workshop.

Any questions before I pass things off to Heberto to talk about NWB?
