 [![Contributors][contributors-shield]][contributors-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
  


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/TRADLY-PLATFORM/Kittiwake">
    <img src="./src/assets/images/logo.svg" alt="Logo" width="80" height="80">
  </a>
 
  <h3 align="center">Tradly Platform</h3>

  <p align="center">
     An open source Flutter Template for B2C App. Contents served from Tradly Headless API
    <br />
    <a href="https://portal.tradly.app/docs/introduction"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="#"> Demo is coming soon </a>
    ·
    <a href="https://github.com/TRADLY-PLATFORM/Kittiwake/issues">Report Bug</a>
    ·
    <a href="https://github.com/TRADLY-PLATFORM/Kittiwake/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <!-- <li><a href="#acknowledgements">Acknowledgements</a></li> -->
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
Kittiwake is a Flutter based storefront kit developed on top of Tradly API. It comes with automated CI/CD, testing, etc. You can launch a B2C, D2C e-commerce apps using this kit. You need the tenantID or Publishable API Key to test your app. Signup for a free sandbox account at Tradly.app and experiment the app. 
<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->
 

### Built With
* Flutter
 
<!-- GETTING STARTED -->
## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Prerequisities
_Documentation yet to be added_

### Installation
_Documentation yet to be added_


### Folder Structure
Here is the core folder structure which flutter provides.
tradly_grocery_app/ 
|- android 
|- build 
|- ios 
|- lib 
|- test

Here is the folder structure we have been using in this project
lib/
|- data
|- domain
|- presentation


## Data Layer
Data Layer contains Repository Implementations and 1 or multiple Data Sources. Repositories are responsible to coordinate data from the different Data Sources. Data Layer depends on Domain Layer.

data/
|- entities
|- model
|- repo
|- source
|- store
|- utils


### Entites
An entity can be an object with methods, or it can be a set of data structures and functions. It doesn’t matter so long as the entities could be used by many different applications in the enterprise.

### Model
Models are used to map the data for network request and response, network failures and exceptions.

### Repo
The implementation of the repository interface will reside in the infrastructure layer (also referred to as persistence layer or data layer). The Repository pattern is a well-documented way of working with a data source. ... A repository performs the tasks of an intermediary between the domain model layers and data mapping, acting in a similar way to a set of domain objects in memory

### Source
source is act as data source consist of cache and remote source. Source are accessed from store. 

### Store
Store is act as data service provider. It call remote API from remote source and update into the cache source. Returns the source from cache to the store.

### Utils
Utils consists of constants which are used in data layer and helper classes.


## Domain Layer
Domain Layer is the most INNER part of the onion (no dependencies with other layers) and it contains Entities, Use cases & Repository Interfaces. Use cases combine data from 1 or multiple Repository Interfaces.

domain/
|- model
|- repo
|- usecase
|- utils



## Presentation Layer
Presentation Layer contains UI (Widgets) that are coordinated by Presenters/ViewModels which execute 1 or multiple Use cases. Presentation Layer depends on Domain Layer.

presentation
|- helper
|- model
|- ui
|- utils
|- view_model
|- widget





<!-- USAGE EXAMPLES -->
## Usage
_"Pending information to be added"_

<!-- ROADMAP -->
## Roadmap
_"Pending to be added"_

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact
Discussion: https://community.tradly.app
Tradly Platform   -  hitradly@gmail.com
Project Link: [https://github.com/github_username/repo_name](https://github.com/TRADLY-PLATFORM/Kittiwake)



<!-- ACKNOWLEDGEMENTS -->
<!-- ## Acknowledgements

* []()
* []()
* []()
 -->




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/TRADLY-PLATFORM/Kittiwake 
[contributors-url]: https://github.com/TRADLY-PLATFORM/Kittiwake/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/TRADLY-PLATFORM/Kittiwakee
[forks-url]: https://github.com/TRADLY-PLATFORM/Kittiwake/network/members
[stars-shield]: https://img.shields.io/github/stars/TRADLY-PLATFORM/Kittiwake
[stars-url]: https://github.com/TRADLY-PLATFORM/Kittiwake/stargazers
[issues-shield]: https://img.shields.io/github/issues/TRADLY-PLATFORM/Kittiwake
[issues-url]: https://github.com/TRADLY-PLATFORM/Kittiwake/issues
[license-shield]: https://img.shields.io/github/license/TRADLY-PLATFORM/repo.svg?style=for-the-badge
[license-url]: https://github.com/TRADLY-PLATFORM/Kittiwake/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
