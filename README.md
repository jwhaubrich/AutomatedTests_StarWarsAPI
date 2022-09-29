<div id="top"></div>

[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1200px-Star_Wars_Logo.svg.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">StarWars API Integration Tests</h3>

  <p align="center">
    An automated application test suite that tests several HTTP requests against the Star Wars API.
    <br />
    <a href="https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    ·
    <a href="hhttps://github.com/jwhaubrich/AutomatedTests_StarWarsAPI/issues">Report Bug</a>
    ·
    <a href="https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
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
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Casio_calculator_JS-20WK_in_201901_002.jpg/340px-Casio_calculator_JS-20WK_in_201901_002.jpg)

A simple automated application test suite that performs several HTTP requests against the Star Wars API. The HTTP requests tested in this suite include GET, HEAD, and OPTIONS. The Star Wars API is located at: https://swapi.dev/.
1. Positive tests for the GET, HEAD, and OPTIONS HTTP requests
2. Negative tests for the GET and HEAD HTTP requests
3. Parallel testing included with the "IntegrationTest" class

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [Java 8: Version 1.8.0_341 ](https://java.com/en/)
* [Gradle: Version 7.4](https://gradle.org/)
* [Groovy: Version 3.0.9](https://groovy-lang.org/)
* [Ant: Version 1.9](https://ant.apache.org/)
* [JVM: Version 1.8.0_341](https://www.java.com/en/)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

First, we'll need to copy this repo to your machine, then running the application by creating a jar file. Please see the instructions that follow:


### Running the Program

1. Clone the repo
   ```sh
   git clone https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI.git
   ```
2. Navigate to the local directory where the repo is located on your machine.
3. Run the StarWarsIntegrationTests program with:
   ```sh
   ./gradlew run
   ```
<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git switch -c feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Joe Haubrich - [@joe_haubrich](https://twitter.com/joe_haubrich) - jwhaubrich@gmail.com

Project Link: [https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI](https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
[product-screenshot]: https://as01.epimg.net/meristation/imagenes/2021/05/04/noticias/1620123558_111953_1647427912_noticia_normal.jpg
[license-shield]: https://camo.githubusercontent.com/111148992d0253f8d5e36b62087d48a9eabb1d7244b2b7316214f47d5c9a8781/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c6963656e73652f6f74686e65696c647265772f426573742d524541444d452d54656d706c6174652e7376673f7374796c653d666f722d7468652d6261646765
[license-url]: https://github.com/jwhaubrich/AutomatedTests_StarWarsAPI/blob/main/LICENSE
