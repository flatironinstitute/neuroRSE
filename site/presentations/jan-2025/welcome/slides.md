# Flatiron CCN Software workshop

![image](/assets/jan2025-banner.svg)

#note: welcome everyone to the CCN software workshop! we're excited to have you here. I'm Billy Broderick, one of the members of the neuroRSE team. Before we get started, I'm going to have the speakers and TAs introduce themselves. then we'll go around and have everyone introduce themselves. I'll finish up by giving an overview of our schedule, and then we'll get started!

but before all that --- couple quick notes:

- we're planning on taking some photos at this workshop, which we'll post on twitter or our websites. if you don't want your photo included there, just let one of us know
- has everyone run setup.py? did they see my slack message yesterday about `pip install -e .`?

---

## Everyone on the slack?

--- 

## Everyone installed and ready to go?

```
cd path/to/ccn-software-jan-2025
git pull
# activate your python environment
python scripts/setup.py
python scripts/check_setup.py
```

---

## Workshop staff

![image](/assets/jan-2025/speakers.svg)

#note: Okay, with all that out of the way, let's introduce who's here for this workshop. These are the people you can ask questions to if you have logistical or technical problems. I'm going to have us all go around and introduce ourselves briefly, saying who we are, where we are, what we work on, and one non-science fact about ourselves.

Since I'm standing up here, I'll go first: I'm Billy Broderick, I'm one of the members of the neuroRSE group I just mentioned. I'm one of the developers for nemos, and I'm the main developer for plenoptic, which we're not actually discussing here, but is a package for generating stimuli to better understand computational models of perceptual systems. If you're interested, happy to talk more about this, come find me. My non science fact is: I'm actually recently back from parental leave; I have a 15 week old daughter at home. so I'm really looking forward to getting a full nights uninterrupted sleep while I'm Vienna. And I have about a million photos, if anyone wants to see.

Okay, let's go through everyone else from top left to bottom right: Jessica?

---
## Introduce yourselves!

### Name, Lab, What you work on
### One non-science fact about yourself

#note: Now let's go through and introduce all the participants. Let's start at the front here and we'll snake our way back.

---
## Day 1: pynapple

| Time          | Event                                                                                   |
|---------------|-----------------------------------------------------------------------------------------|
| 9 - 10am      | Breakfast                                                                               |
| 10 - 11am     | Welcome and introduction to data standards                                              |
| 11 - 11:30am  | Coffee break                                                                            |
| 11:30am - 1pm | Pynapple core                                                                           |
| 1 - 2pm       | Lunch                                                                                   |
| 2 - 3:30pm    | Standard analyses in systems neuroscience, part 1: cross-correlations and tuning curves |
| 3:30 - 4pm    | Coffee break                                                                            |
| 4 - 5:45pm    | Standard analyses in systems neuroscience, part 2: signal processing                    |
| 5:45 - 6pm    | [fastplotlib](https://github.com/fastplotlib/fastplotlib) advertisement                 |
| 6 - 8pm       | Dinner                                                                                  |

#note: Excellent. so, up next, we're going to hear from Oliver talking about the NWB data standard, then the rest of the day will be Guillaume and Sarah Jo talking about pynapple, alternating between presentations and hands-on exercises.

if you don't have your installation working now, come find one of us at the coffee break so we can get you ready to go for the rest of the day! please!

then we have dinner tonight all together at Flatiron

---
## Day 2: nemos

| Time          | Event                                                       |
|---------------|-------------------------------------------------------------|
| 9 - 10am      | Breakfast                                                   |
| 10 - 11am     | Introduction to Generalized Linear Models (GLMs)            |
| 11 - 11:30am  | Coffee break                                                |
| 11:30am - 1pm | Fitting a basic GLM to single neuron patch-clamp recordings |
| 1 - 2pm       | Lunch                                                       |
| 2 - 4pm       | Functional connectivity analysis of head-direction neurons  |
| 4 - 4:30pm    | Coffee break                                                |
| 4:30 - 6pm    | Model comparison and cross-validation                      |
| 6 - 8pm       | Dinner                                                      |

#note: tomorrow is all Generalized Linear Models, all day. We'll start off with Edoardo giving an conceptual overview of the GLM, then I'll walk you through a simple example with some data from the Allen Brain Observatory, Edoardo will come back to walk you through a more involved example with head-direction tuned neurons, then I'll finish the day by discussing how to use nemos with scikit-learn to do model selection and cross-validation

And we'll again finish the day with a hackathon. we'll have some advanced concepts you can work through, or you can play around with using nemos on your data. again, we'll be here to help and answer any questions.

our dinner tomorrow will be offsite, so please let one of the admin know if you won't be joining for any reason.

---
## one link to rule them all

[https://neurorse.flatironinstitute.org/workshops/jan-2025/](https://neurorse.flatironinstitute.org/workshops/jan-2025/)

#note: Finally, I'm going to leave this up here for a bit. You've gotten this link on the slack, you've gotten this in your email, but one more time. This page has links to the slides of all the presentations you'll see, as well as to the workshop schedule and the github page that has the setup instructions and all the notebooks we'll be working through on this workshop.

Any questions before I pass things off to Oliver to talk about NWB?
