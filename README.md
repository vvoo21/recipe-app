# Blog App ![Rails](https://rubyonrails.org/assets/images/logo.svg)

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [Entity Relationship Diagram](#entity-relationship-diagram)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Database](#database)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Recipe App <a name="about-project"></a>

**Recipe app** keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>
<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
  </details>
  <details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- Login page.
- Registration page.
- Food list (with all CRUD implementation, except for 'update').
- Recipes list (with all CRUD implementation, except for 'update').
- General shopping list view (all missing food for all your recipes and total price).
- List of all public recipes from other users with their names and total prices.

## Entity Relationship Diagram <a name="entity-relationship-diagram"></a>

![](./recipe_erd.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

### Prerequisites

In order to run this project you need:

- [Ruby](https://www.ruby-lang.org/en/) installed and running
- [Rails](https://rubyonrails.org/) installed and running
- [PostgreSQL](https://www.postgresql.org/) installed and running

### Setup

Clone this repository to your desired folder:

```
git clone https://github.com/vvoo21/recipe-app.git
cd Blog-App
code .
```

### Install

Install the project dependencies, execute the following command in Bash:

```sh  
  bundle install
```

### Database

Create the database, execute the following command in Bash:

```sh
rails db:create
rails db:migrate
```

### Usage

To run the project, execute the following command in Bash:  

```sh
  rails server
```

### Run Tests

To run the project tests, execute the following command: 

```sh
 rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Vanessa Oliveros Padron**

- GitHub: [@vvoo21](https://github.com/vvoo21)
- Twitter: [@vaneoliverosp](https://twitter.com/vaneoliverosp)
- LinkedIn: [vaneoliverosp](https://www.linkedin.com/in/vaneoliverosp/)

👤 **Felipe Haybar**

- GitHub: [@Feliverse](https://github.com/Feliverse)
- Twitter: [@FelipeHaybar](https://twitter.com/FelipeHaybar)
- LinkedIn: [FelipeHaybar](https://linkedin.com/in/FelipeHaybar)

👤 **Nabeel Ahmed**
- GitHub: [@Metaverse-Nabeel](https://github.com/Metaverse-Nabeel)
- LinkedIn: [@Nabeel129](https://www.linkedin.com/in/nabeel129/)
- Wellfound(AngelList): [@Nabeel129](https://wellfound.com/u/nabeel-ahmed-62)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Pagination or infinite scrolling for the lists

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a start if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank the Microverse program!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
