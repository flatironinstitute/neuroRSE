# Basic Generalized Linear Models with NeMoS

## Billy Broderick
## Jan 2025

#note: welcome back everyone. I hope everyone's refreshed, caffeinated, and excited for modeling. I'm Billy, one of the developers of nemos, and from now until lunch, we're going to learn the basics of fitting a GLM with NeMoS, before Edoardo comes back and shows a more indepth example

---

![](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/allen_brain_map.png)

#note: for this first exercise, we're going to use a data from the Allen Brain Atlas, which contains recordings from a huge variety of mouse neurons.

---

<div data-animate data-load="https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/allen_data.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#rect712", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "0"} ]},
{"element": "#rect1342", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "1"} ]},
{"element": "#rect1374", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "2"} ]},
{"element": "#g1429", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "4"} ]},
{"element": "#g1433", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "5"} ]},
{"element": "#g1437", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "6"} ]}
]} -->
</div>

#note: in this session, we're going to use data from one of these recordings. 

**click** this is a layer 4 neuron from mouse V1.

**click**  this is an in-vitro experiment, with the neuron in a patch-clamp setup in a dish. the experimenters are injecting current in different patterns and recording the cell's response, both the membrane voltage and the spikes.

we're going to ignore the membrane voltage, since you don't usually have that for the kinds of experiments analyzed with nemos, and we'll focus on the current as input and the spikes as output.

**click** they injected current in a bunch of different patterns, but we're just going to look at one of them, Noise 1. in this protocol, current was injected at three different time points throughout the trial, as a noisy sinusoid. 

- **click** looking back at the data here, we can see that the cell doesn't respond at all to the first, lowest amount of current
- **click** then it responds a medium amount to the middle level of current
- **click** and responds a lot to the final current level

This behavior, this simple response to the current, is what we're going to build our model to explain.

I'm going to return to this behavior and talk about it in more detail as we work through the notebook, but any questions about this before we get started?

**pause**

first we're going to explore this data set with pynapple, then we'll put together a model in nemos, examine how it did, and then extend it a bit. okay, let's get started.
