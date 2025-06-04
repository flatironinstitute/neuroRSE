---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

# About

The NeuroRSE group at Flatiron Institute Center for Computational Neuroscience builds and maintains open source software for computational and systems neuroscience. We intend to create solid packages that can be relied and built upon, rather than chasing cutting-edge research.

**What does RSE mean?** A "research software engineer", which is defined by the [US-RSE professional organization](https://us-rse.org/about/what-is-an-rse/) as someone "who regularly use expertise in programming to advance research".

{% include posts.html %}

{% include workshops.html %}

# Our Projects

All of our projects are open-source python packages. We are always happy to get external contributors and happy to help new users get started! See each project's `CONTRIBUTING.md` file for more details.

{% include project_list.html %}

{% include past_announcements.html %}

# Contact

You can get in touch with us at `neurorse [at] flatironinstitute.org`

# Members

{% assign members = "balzani,broderick,venditto,viejo" | split: "," %}
{% include people_list.html people=members %}

# Interns

## 2025

{% assign members = "de-wulf,crespo-darriba,maura" | split: "," %}
{% include people_list.html people=members header_lvl="h3"%}

## 2024

{% assign members = "bagi,dettki,freud,lewis" | split: "," %}
{% include people_list.html people=members header_lvl="h3"%}

# Group Alumni

{% assign members = "thomson" | split: "," %}
{% include people_list.html people=members %}
