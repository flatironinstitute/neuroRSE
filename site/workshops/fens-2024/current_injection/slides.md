# Basic Generalized Linear Models with NeMoS

## Billy Broderick
## FENS 2024

#note: welcome back everyone. I hope everyone's refreshed, caffeinated, and excited for modeling. I'm Billy, one of the developers of nemos, and from now until lunch, we're going to learn the basics of fitting a GLM with NeMoS, before Edoardo comes back and shows a more indepth example

---

![](https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/allen_brain_map.png)

#note: for this first exercise, we're going to use a data from the Allen Brain Atlas, which contains recordings from a huge variety of mouse neurons.

---

<div data-animate data-load="https://users.flatironinstitute.org/~wbroderick/presentations_assets/fens-2024/allen_data.svg" crossorigin="anonymous">
<!-- <div data-animate data-load="/assets/fens_images/allen_data.svg" > -->
<!-- {"setup": [
{"element": "#rect712", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "0"} ]},
{"element": "#rect1342", "modifier": "attr", "parameters": [ {"class": "fragment appear-disappear", "data-fragment-index": "1"} ]}
]} -->
</div>

#note: in this session, we're going to use data from one of these recordings
