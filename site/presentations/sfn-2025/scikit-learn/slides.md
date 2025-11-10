# scikit-learn and nemos

## Billy Broderick

---

## [https://scikit-learn.org](https://scikit-learn.org)

<div data-animate data-load="/assets/jan-2025/scikit-learn.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#rect1", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "0"} ]}
 ]} -->
</div>

#note: scikit-learn is the standard machine learning library in python, and it contains all sorts of useful tools. to avoid re-inventing the wheel, we have tried to make nemos compatible with scikit-learn so that users can take advantage of this awesome library (and we don't have to code up a lot of gnarly algorithms ourselves).

**click** in particular, we make use of their model selection tools

---

## scikit-learn objects

<div data-animate data-load="/assets/jan-2025/scikit-learn-objects.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#g36", "modifier": "attr", "parameters": [ {"display": "none"} ]},
{"element": "#text1-2-1-7", "modifier": "attr", "parameters": [ {"display": "none"} ]},
{"element": "#text1-2-1", "modifier": "attr", "parameters":  [ {"display": "none"} ]},
{"element": "#text1-2", "modifier": "attr", "parameters":  [ {"display": "none"} ]},
{"element": "#text1", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "0"} ]},
{"element": "#g3", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "1"} ]}
 ]} -->
</div>

#note: in order to work with scikit-learn, objects need to implement one of these interfaces, which just means that you have the corresponding method which behaves in the expected way. that is, to be an estimator, you must have a fit method that takes either in data and target (for supervised learning), or just data (for unsupervised)

**click** for nemos, we've been mainly interacting with basis and GLM / PopulationGLM objects so far. GLM is an estimator, because it has this fit method.

**click** it's also a predictor and model, because it has predict and score methods.

this means, if you look through the scikit learn documentation and you find an algorithm or a method that makes use of an "estimator", "predictor" or "model", you can use nemos GLMs there.

---

<div data-animate data-load="/assets/jan-2025/glm_slide.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#g242-3", "modifier": "attr", "parameters": [ {"class": "fragment disappear-appear", "data-fragment-index": "0"} ]},
{"element": "#g244", "modifier": "attr", "parameters": [ {"class": "fragment disappear-appear", "data-fragment-index": "1"} ]},
{"element": "#g243", "modifier": "attr", "parameters": [ {"class": "fragment disappear-appear", "data-fragment-index": "2"} ]},
{"element": "#g245", "modifier": "attr", "parameters": [ {"class": "fragment disappear-appear", "data-fragment-index": "3"} ]}
 ]} -->
</div>

#note: so to go back to Edoardo's intro slide about GLMs:

**click** fit is what allows to estimate the weights from data,

**click** predict gives the predicted firing rate once the weights have been set

**click** and score gives the log-likelihood, by summing over the probabilities here

but there was one extra object on that last slide, transformers **click**. in sklearn terms, transformers modify data, and they're generally used for preprocessing. that's what goes here, and in nemos, those are basis objects, which transform our input data to create the GLM's design matrix


---

## scikit-learn objects

<div data-animate data-load="/assets/jan-2025/scikit-learn-objects.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#text1-2", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "0"} ]},
{"element": "#g36", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "1"} ]},
{"element": "#text1-2-1-7", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "2"} ]},
{"element": "#text1-2-1", "modifier": "attr", "parameters": [ {"class": "fragment appear", "data-fragment-index": "3"} ]}
 ]} -->
</div>

#note: 

**click** that's correct, but there's a slight nuance here

**click** nemos basis objects can accept any number of multidimensional arrays as input. we haven't used this yet, but we'll use it in this upcoming tutorial. this allows you to have multidimensional inputs, like xy position in space or images, as well as combining multiple basises into a single object, to allow you to do something like this, to create a design matrix using all your inputs. again, we'll go into this in more detail in a bit

**click** scikitlearn on the other hand restricts transfomers to only accept a single 2d array. 

**click** so to use nemos basis objects with sklearn, we need one helper function, `set_input_shape`, so that we know how to go from one convention to the other.

any questions?


---

## scikit-learn objects

<div data-animate data-load="/assets/jan-2025/scikit-learn-objects.svg" crossorigin="anonymous">
<!-- {"setup": [
{"element": "#g36", "modifier": "attr", "parameters": [ {"display": "none"} ]},
{"element": "#text1-2-1-7", "modifier": "attr", "parameters": [ {"display": "none"} ]},
{"element": "#text1-2-1", "modifier": "attr", "parameters":  [ {"display": "none"} ]}
 ]} -->
</div>

#note: so, nemos glms can be used with sklearn out of the box, because sklearn knows what to do with them. basis objects need one extra step, which we'll talk about in more detail soon.

any questions?

---
## scikit-learn pipelines
![image](/assets/jan-2025/pipeline.svg)

#note: finally, there's one more scikit-learn object we're going to make use of. scikit-learn has pipelines, which allow you to chain together any number of transformers, ending with an estimator. skearn then treats this as a single estimator, for use with its methods

in the upcoming example, we're going to use this to combine a basis with a GLM. we can then pass the pipeline our behavioral inputs, it will pass them to the basis, which will transform them into the design matrix, which will get passed along with the spike counts to the GLM object, which will then fit the data.

this will allow us to use scikit-learn's crossvalidation to select both properties of the basis and the GLM!

any questions?
