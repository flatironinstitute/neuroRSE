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

conda:  <!-- .element: style="margin-top:5%" -->
```bash
cd path/to/ccn-software-feb-2026
git pull
conda activate ccn-feb26 
python scripts/setup.py
python scripts/check_setup.py
```

uv:  <!-- .element: style="margin-top:5%" -->
```bash
cd path/to/ccn-software-feb-2026
git pull
uv run python scripts/setup.py
uv run python scripts/check_setup.py
```

---


## CCN Software

<div class='column' style="float:left;width:47%">

<img data-src="/assets/pynapple_logo.svg">

- [https://github.com/pynapple-org/pynapple/](https://github.com/pynapple-org/pynapple/)
- light-weight python library for neurophysiological data analysis

<img style="margin-top:3%" data-src="/assets/nemos_logo.svg">

- [https://github.com/flatironinstitute/nemos](https://github.com/flatironinstitute/nemos)
- statistical modeling framework for systems neuroscience

</div>

<div class='column' style="float:right;width:47%">

<img style="margin-bottom:3%" data-src="/assets/plenoptic_logo.svg">

- [https://github.com/plenoptic-org/plenoptic/](https://github.com/plenoptic-org/plenoptic/)
- model-based synthesis of perceptual stimuli

</div>

---

## Workshop staff

![image](/assets/feb-2026/speakers.svg)

#note: Okay, with all that out of the way, let's introduce who's here for this workshop. These are the people you can ask questions to if you have logistical or technical problems. I'm going to have us all go around and introduce ourselves briefly, saying who we are, where we are, what we work on, and one non-science fact about ourselves.

Since I'm standing up here, I'll go first: I'm Billy Broderick, I'm one of the members of the neuroRSE group I just mentioned. I'm one of the developers for nemos, and I'm the main developer for plenoptic, which we're not actually discussing here, but is a package for generating stimuli to better understand computational models of perceptual systems. If you're interested, happy to talk more about this, come find me. My non science fact is: I'm actually recently back from parental leave; I have a 15 week old daughter at home. so I'm really looking forward to getting a full nights uninterrupted sleep while I'm Vienna. And I have about a million photos, if anyone wants to see.


---

## Workshop staff

![image](/assets/feb-2026/tas.svg)

#note: we're going to have slightly different sets of TAs for the next two days, so I'm going to flash their faces up here so you don't get confused when you see new faces tomorrow morning.

---

## Introduce yourselves!

### Name, Lab, What you work on
### One non-science fact about yourself

#note: Now let's go through and introduce all the participants. Let's start at the front here and we'll snake our way back.

---
## Day 1

| Time                 | Event                                                                             |
|----------------------|-----------------------------------------------------------------------------------|
| 8:30 AM -- 9:50 AM   | Check-In, Installation, and Breakfast                                             |
| 9:50 AM -- 11:00 AM  | Welcome and introduction to data standards                                        |
| 11:00 AM -- 11:30 AM | Coffee Break                                                                      |
| 11:30 AM -- 1:00 PM  | Pynapple core                                                                     |
| 1:00 PM -- 2:00 PM   | Lunch                                                                             |
| 2:00 PM -- 3:30 PM   | Guided introduction to Pynapple API                                               |
| 3:30 PM -- 4:00 PM   | Coffee Break                                                                      |
| 4:00 PM -- 5:45 PM   | **Breakout groups**: Further analyses of head-direction populations with Pynapple |
| 6:00 PM -- 8:00 PM   | Dinner at Blackbarn, 19 E 26th St, New York                                       |

#note: Excellent. so, up next, we're going to hear from Ben talking about the NWB data standard, then the rest of the day will be Guillaume and Sarah Jo talking about pynapple, alternating between presentations and hands-on exercises.

if you don't have your installation working now, come find one of us at the coffee break so we can get you ready to go for the rest of the day! please!

---
## Day 2

| Time                 | Event                                                                       |
|----------------------|-----------------------------------------------------------------------------|
| 9:00 AM -- 10:00 AM  | Breakfast                                                                   |
| 10:00 AM -- 11:00 AM | Intro to GLM                                                                |
| 11:00 AM -- 11:30 AM | Coffee Break                                                                |
| 11:30 AM -- 1:00 PM  | Fitting a basic GLM to single neuron patch-clamp recordings                 |
| 1:00 PM -- 2:00 PM   | Lunch                                                                       |
| 2:00 PM -- 3:30 PM   | **Breakout groups**: Modeling head-direction populations with NeMoS         |
| 3:30 PM -- 4:00 PM   | Coffee Break                                                                |
| 4:30 PM -- 6:00 PM   | **Breakout groups**: Analyzing Calcium Imaging data with Pynapple and NeMoS |
| 6:00 PM -- 8:00 PM   | Dinner at Casa Carmen, 5 W 21st St, New York                                |

#note: tomorrow is all Generalized Linear Models, all day. We'll start off with Edoardo giving an conceptual overview of the GLM, then I'll walk you through a simple example with some data from the Allen Brain Observatory, Edoardo will come back to walk you through a more involved example with head-direction tuned neurons, then I'll finish the day by discussing how to use nemos with scikit-learn to do model selection and cross-validation

---
## Day 3

| Time                 | Event                                                                                                |
|----------------------|------------------------------------------------------------------------------------------------------|
| 9:00 AM -- 10:00 AM  | Breakfast                                                                                            |
| 10:00 AM -- 10:30 AM | plenoptic advertisement                                                                              |
| 10:30 AM -- 11:00 AM | Pynapple Advanced                                                                                    |
| 11:00 AM -- 11:30 AM | Coffee Break                                                                                         |
| 11:30 PM -- 1:00 PM  | **Breakout groups**: analyze place cells                                                             |
| 1:00 PM -- 2:00 PM   | Lunch                                                                                                |
| 2:00 PM -- 3:30 PM   | Model and Feature selection with place cell data                                                     |
| 3:30 PM -- 4:00 PM   | Coffee Break                                                                                         |
| 4:00 PM -- 6:00 PM   | **Choose Your Own Adventure**: bring your own data / analyze Allen Institute's Visual Coding dataset |
| 6:00 PM -- 8:00 PM   | Dinner at Barlume, 900 Broadway, New York                                                            |

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

## CITE YOUR SOFTWARE!

---

<img data-src="/assets/defense-blackhole.svg"></img>

#note: To take one particularly illustrative example: I'm sure many of you recognize this picture. It's an image of supermassive black hole M87, captured by the Event Horizon Telescope Collaboration in April 2019

---

<img data-src="/assets/defense-blackhole-headlines.svg"></img>

#note: this hit the headlines of every major news outlet, with the image eventually reaching more than 4.5 billion people around the world

the work that went into this was done with a variety of packages from the open-source python scientific ecosystem, such as numpy and matplotlib, which was credited by some of the scientists involved as making the work possible, preventing them from having to reinvent everything from scratch

---

<img data-src="/assets/defense-blackhole-headlines-impact.svg"></img>

#note: yet five days after this announcement, the US National Science Foundation denied a grant to support that ecosystem, saying the software didn't have "sufficient impact"

---

## CITE YOUR SOFTWARE!

---

## one link to rule them all

[https://neurorse.flatironinstitute.org/workshops/feb-2026.html](https://neurorse.flatironinstitute.org/workshops/feb-2026.html)

#note: Finally, I'm going to leave this up here for a bit. You've gotten this link on the slack, you've gotten this in your email, but one more time. This page has links to the slides of all the presentations you'll see, as well as to the workshop schedule and the github page that has the setup instructions and all the notebooks we'll be working through on this workshop.

Any questions before I pass things off to Heberto to talk about NWB?
