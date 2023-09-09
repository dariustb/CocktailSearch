---
layout: default
title: Backend Architecture
permalink: /architecture
has_children: false
has_toc: false
nav_order: 3
---

# Backend Architecture
This page will explain how the backend code functions to create the functionality of highest level on down.

## Highest Level
Cocktail Search (catalogue page) works in this process:

### General load
1. Python queries SQLite for full list of drinks / base liquors
1. SQLite returns the lists to Python, which are saved into a variable
1. Python serves the information onto HTML using [Flask](https://flask.palletsprojects.com/)
1. [Jinja](https://jinja.palletsprojects.com/) populates the page with drink/base information upon render

### User Queries
1. User enters query into search bar and submits information
1. HTML sends Python the information using GET and POST
1. Python captures the query and saves it in a variable
1. Python queries SQLite for similar drink names as query
1. SQLite returns the lists to Python, which are saved into a variable
1. Python serves the information onto HTML using [Flask](https://flask.palletsprojects.com/)
1. [Jinja](https://jinja.palletsprojects.com/) populates the page with drink/base information upon render
