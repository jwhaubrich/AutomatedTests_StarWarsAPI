Feature: The HTTP method GET works correctly against the StarWarsAPI
  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario: Andres gets a list of all of the people maintained within the StarWarsAPI
    Given path '/people'
    When method GET
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.count == 82

  Scenario: Andres gets a list of all of the planets maintained within the StarWarsAPI
    Given path '/planets'
    When method GET
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.count == 60

  Scenario: Andres searches for the first person and is returned with information about Luke Skywalker
    Given path '/people/1'
    When method GET
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.name == 'Luke Skywalker'
    And match response.height == '172'
    And match response.hair_color == 'blond'

  Scenario: Andres searches for the planet Tatooine
    Given path '/planets'
    And param search = 'Tatooine'
    When method GET
    Then status 200
    And match header Content-Type contains 'application/json'

    And def apiResponse = response
    Then match apiResponse.results[*].climate contains ["arid"]
    Then match apiResponse.results[*].orbital_period contains ["304"]

  Scenario Outline: Andres checks all endpoints and ensures that they work correctly
    Given path '/<endpoints>'
    When method GET
    Then status 200
    And match header Content-Type contains 'application/json'

    Examples:
      |endpoints|
      |films    |
      |people   |
      |planets  |
      |species  |
      |starships|
      |vehicles |
      |people   |


  Scenario Outline: Andres ensures all data endpoints are returned for people
    Given path '/people'
    When method GET
    Then status 200
    * match header Content-Type contains 'application/json'

    * def apiResponse = response
    * match apiResponse.results[0] contains {<endpoints>: '#ignore'}

    Examples:
      |endpoints|
      |name     |
      |height   |
      |mass     |
      |hair_color|
      |skin_color|
      |birth_year|
      |gender    |
      |homeworld |
      |films     |
      |species   |
      |vehicles  |
      |starships |
      |created   |
      |edited    |
      |url       |



