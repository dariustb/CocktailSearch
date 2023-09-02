<!-- PROJECT SHIELDS -->
[![PyTest][pytest]][pytest-url]
[![PyLint][pylint]][pylint-url]
[![GPages][gpages]][gpages-url]

<!-- PROJECT LOGO -->
<br />
<div align="center" id="readme-top">
  <a href="https://github.com/dariustb/cocktailsearch">
    <img src="https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/ba54af101584055.5f21f1fe40eb6.png" height=100 alt="CS Logo">
  </a>

  <h1 align="center">Cocktail Search</h1>

  <p align="center">
    Python web app to search cocktail recipes via SQL queries
    <br />
    <a href="https://dariustb.github.io/CocktailSearch/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/dariustb/cocktailsearch/issues">Report Bug</a>
    ·
    <a href="https://github.com/dariustb/cocktailsearch/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project
Cocktail Search is a web application built using Python and the Flask framework, designed to help users discover and explore a wide variety of cocktail recipes. It provides a user-friendly interface for searching and retrieving cocktail recipes from a SQLite database using Python.

Its primary purpose is to elevate your cocktail experience by providing a seamless and delightful way to discover, explore, and master the art of mixing cocktails. Whether you're an amateur mixologist looking to impress your friends at your next gathering or a seasoned bartender in search of inspiration, the Cocktail Search has you covered. With an extensive database, intelligent search functionality, and expertly curated recipes, this application is your one-stop destination for all things cocktails.

So shake things up, stir your creativity, and embark on a flavorful journey with our handcrafted cocktail recipes!

_Please [refer to the documentation][docs] for the full breakdown and logic explanation of the app._

### Built With
* ![Python][python.io]
* ![SQLite3][sqlite.io]
* ![TailwindCSS][tailwind.css]

### Prerequisites
* [Python 3][python] (3.11.0 or greater)
  * [pip 3][python] (versions 22.3 - 23.0.1)

### Install Dependencies
```sh
pip install -r requirements.txt
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Usage
```sh
python src/app.py
```
### Local Development
#### Unit Test
```sh
python -m pytest
```
#### Linting Test
```sh
pylint src/ tests/
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[app]:  #
[docs]: https://dariustb.github.io/cocktailsearch/

<!-- Technologies -->
[vscode]:   https://code.visualstudio.com/
[python]:   https://www.python.org/

<!-- Featured images -->
[product-screenshot]:   #

<!-- CI Test badges -->
[pytest]:   https://github.com/dariustb/cocktailsearch/actions/workflows/pytest.yml/badge.svg
[pylint]:   https://github.com/dariustb/cocktailsearch/actions/workflows/pylint.yml/badge.svg
[gpages]:   https://github.com/dariustb/cocktailsearch/actions/workflows/pages/pages-build-deployment/badge.svg 
[pytest-url]:   https://github.com/dariustb/cocktailsearch/actions/workflows/pytest.yml
[pylint-url]:   https://github.com/dariustb/cocktailsearch/actions/workflows/pylint.yml
[gpages-url]:   https://github.com/dariustb/cocktailsearch/actions/workflows/pages/pages-build-deployment

<!-- Markdown Badges -->
[python.io]:    https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54
[sqlite.io]:    https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white
[tailwind.css]: https://img.shields.io/badge/tailwindcss-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white
