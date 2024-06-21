# Flatiron CCN Software workshop

![image](/assets/fens2024-banner.jpg)

#note: welcome everyone to the first CCN software workshop! we're excited to have you here. I'm Billy Broderick, part of the team at CCN, and I'm going to briefly introduce our team and the center, before having the speakers and TAs introduce themselves. then we'll go around and have everyone introduce themselves. I'll finish up by giving an overview of our schedule, and then we'll get started!

but before all that --- couple quick notes:

- we're planning on taking some photos at this workshop, which we'll post on twitter or our websites. if you don't want your photo included there, just let one of us know
- has everyone run setup.py?
- notes from Jess

---

## What is Flatiron?

<div data-animate data-load="https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/flatiron.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#g715", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "0"} ]}
]} -->
</div>

#note: so apologies to those who know already, but I thought I'd take a moment to explain who we are. We are employees of the Flatiron Institute. If you've heard "Flatiron" before, you're probably thinking of this iconic building in Manhattan, the Flatiron Building

**click**. unfortunately, we're not in that building. we're about 2 blocks from there -- the neighborhood around this building is known as the Flatiron district, hence the name. I think every employee goes through a moment of disappointment when they realize they won't be working here. we have interns every summer, and a fair number of the interns this summer showed up at the Flatiron building and were very confused. especially because the building is currently empty I think, due to some weirdness over the ownership

---

## The Real Flatiron Institute

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/flatiron-institute.png)

#note: we are part of this Flatiron institute, which is part of the Simons Foundation. the Simons Foundation is a private foundation whose money comes from Jim Simons, a mathematician and hedge fund billionaire who recnetly passed away. it funds a variety of projects in the maths and sciences, especially computational research, and the Flatiron institute is the in-house research center.

---
## The Real Flatiron Institute

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/flatiron-centers.png)

#note: Flatiron has five centers, one each for computational astrophysics, biology, mathematics, neuroscience, and quantum physics, plus the scientific computing core, who supports the cluster and other computational infrastructure that the other centers use.

---
## The Real Flatiron Institute

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/flatiron-ccn.png)

#note: Mots of the speakers and TAs here are part of the Center for Computational Neuroscience, the newest center at Flatiron, which has four research groups doing differnet types of computational neuroscience work, with grad students from NYU, postdocs and research scientists, along with summer interns.

---
## The Real Flatiron Institute

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/neurorse.png)

#note: And most of the speakers you're going to hear from over the next two days are from the neuroRSE, or research software engineering, group within CCN. We're a group of full time research scientists whose only job is to build and maintain open source python packages for neuroscience research, including pynapple and nemos.

---
## Workshop staff

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/speakers.svg)

#note: Okay, with all that out of the way, let's introduce who's here for this workshop. These are the people you can ask questions to if you have logistical or technical problems. I'm going to have us all go around and introduce ourselves briefly, saying who we are, where we are, what we work on, and one non-science fact about ourselves.

Since I'm standing up here, I'll go first: I'm Billy Broderick, I'm one of the members of the neuroRSE group I just mentioned. I'm one of the developers for nemos, and I'm the main developer for plenoptic, which we're not actually discussing here, but is a package for generating stimuli to better understand computational models of perceptual systems. If you're interested, happy to talk more about this, come find me. My non science fact is: I'm actually recently back from parental leave; I have a 15 week old daughter at home. so I'm really looking forward to getting a full nights uninterrupted sleep while I'm Vienna. And I have about a million photos, if anyone wants to see.

Okay, let's go through everyone else from top left to bottom right: Jessica?

---
## Introduce yourselves!

### Name, Lab, What you work on
### One non-science fact about yourself

#note: Now let's go through and introduce all the participants. Let's start at the front here and we'll snake our way back.

---
## Schedule

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/schedule-1.png)

#note: Excellent. so, up next, we're going to hear from Oliver talking about the NWB data standard, then the rest of the day will be Guillaume talking about pynapple and Caitlin talking about fastplotlib, alternating between presentations and hands-on exercises.

if you don't have your installation working now, come find one of us at the coffee break so we can get you ready to go for the rest of the day! please!

we'll finish the day with a hackathon / open session: you can keep working on anything from earlier in the day that interests you, or you can start working on your data in pynapple. we'll be here, walking around, ready to help or answer any questions

then we have dinner tonight all together in the hotel

---
## Schedule

![image](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/schedule-2.png)

#note: tomorrow is all Generalized Linear Models, all day. We'll start off with Edoardo giving an conceptual overview of the GLM, then I'll walk you through a simple example with some data from the Allen Brain Observatory, and Edoardo will come back to walk you through a more involved example with head-direction tuned neurons.

And we'll again finish the day with a hackathon. we'll have some advanced concepts you can work through, or you can play around with using nemos on your data. again, we'll be here to help and answer any questions.

our dinner tomorrow will be offsite, so please let one of the admin, either Jessica or Deb, know if you won't be joining for any reason.

---
## one link to rule them all

[https://neurorse.flatironinstitute.org/workshops/fens-2024/](https://neurorse.flatironinstitute.org/workshops/fens-2024/)

#note: Finally, I'm going to leave this up here for a bit. You've gotten this link on the slack, you've gotten this in your email, but one more time. This page has links to the slides of all the presentations you'll see, as well as to the workshop schedule and the github page that has the setup instructions and all the notebooks we'll be working through on this workshop.

Any questions before I pass things off to Oliver to talk about NWB?
