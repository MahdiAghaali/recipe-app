<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo 
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

OPTIONAL SECTIONS:
- FAQ

After you're finished please remove all the comments and instructions!
-->

<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Recipe App ](#-recipe-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-) (coming soon)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Recipe App <a name="about-project"></a>

The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Deployed Version

> [Link to live demo](https://little-surf-6581.fly.dev/)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Food list:
    - display a list of food added by the logged-in user as in the wireframe (for teams with only 2 people - display also quantity of a given food).
    - lead to a form that allows users to add new food.
- Recipes list:
    - display a list of recipes created by the logged-in user as in the wireframe.
    - lead to recipe details.
    - If the user is the owner of the recipe, should allow the user to delete it.
- Public recipe list:
    - display a list of all public recipes ordered by newest as in the wireframe.
    - lead to recipe details.
- Recipe details:
    - If the recipe is public or the user is the owner of the recipe, display the recipe details as in the wireframe.
    - If the user is the owner of the recipe, lead to the form that allows the user to add new food.
- General shopping list view (**only for a group that has less than 3 members**):
    - show the list of food that is missing for all recipes of the logged-in user (compare the list of food for all recipes with the general food list of that user).
    - count the total food items and total price of the missing food.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
 gem install rails

```


### Setup

Clone this repository to your desired folder:


```
  git clone https://github.com/MahdiAghaali/recipe-app
  cd recipe-app
  bundle install

```
-

### Install

Install this project with:



```
  cd recipe-app
  gem install
```
-

### Usage

To run the project, execute the following command:



```
  rails db:create
  rails db:migrate
  rails db:seed
  rails server
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

| 👤 Name | Github | LinkedIn |
|------|--------|----------|
|Habeeb Efiamotu Musa Owolewa|[@Efiamotu-1](https://github.com/Efiamotu-1)|[Habeeb Efiamotu Musa](https://www.linkedin.com/in/musa-habeeb/)|
|Mahdi Aghaali|[@Mahdi Aghaali](https://github.com/MahdiAghaali)|[Mahdi Aghaali](https://www.linkedin.com/in/mahdi-aghaali/)|

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] Inventories list:
    - Should display a list of inventories created by the logged-in user as in the wireframe.
    - Should lead to inventory details.
    - If the user is the owner of the inventory, should allow to delete it.
- [ ] Inventory details:
    - Should display the inventory details as in the wireframe.
    - Should lead to a form that allows users to add new food.
- [ ] Recipe details:
    - Should have a modal to choose an inventory to create a shopping list with, as in the wireframe.
- [ ] Inventory shopping list:
    - Should show the list of food that is missing by comparing the food in the recipe with the food in the inventory.
    - Should count the total food items and total price of the missing food.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project give it a star on github

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## ACKNOWLEDGEMENTS

We would like to thank:
- the Microverse team for the great curriculum.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/MahdiAghaali/recipe-app/blob/development/MIT.md) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
