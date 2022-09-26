Feature: The HTTP method GET works correctly against the StarWarsAPI

  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

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
    And match response.count == <responseCount>

    Examples:
      | endpoints | responseCount |
      | films     | 6             |
      | people    | 82            |
      | planets   | 60            |
      | species   | 37            |
      | starships | 36            |
      | vehicles  | 39            |


  Scenario Outline: Andres ensures all data endpoints are returned for people
    Given path '/people'
    When method GET
    Then status 200
    * match header Content-Type contains 'application/json'

    * def apiResponse = response
    * match apiResponse.results[0] contains {<endpoints>: '#ignore'}

    Examples:
      | endpoints  |
      | name       |
      | height     |
      | mass       |
      | hair_color |
      | skin_color |
      | birth_year |
      | gender     |
      | homeworld  |
      | films      |
      | species    |
      | vehicles   |
      | starships  |
      | created    |
      | edited     |
      | url        |





