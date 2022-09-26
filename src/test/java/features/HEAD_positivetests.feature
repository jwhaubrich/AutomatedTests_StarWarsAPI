Feature: The HTTP method HEAD works correctly against the StarWarsAPI

  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario: Andres searches for the first person and is returned with information about Luke Skywalker
    Given path '/people/1'
    When method HEAD
    Then status 200
    And match header Content-Type contains 'application/json'

  Scenario: Andres searches for the planet Tatooine
    Given path '/planets'
    And param search = 'Tatooine'
    When method HEAD
    Then status 200
    And match header Content-Type contains 'application/json'

  Scenario Outline: Andres checks all endpoints and ensures that they work correctly, with upper and lowercase.
    Given path '/<endpoints>'
    When method HEAD
    Then status 200
    And match header Content-Type contains 'application/json'

    Examples:
      | endpoints |
      | films     |
      | people    |
      | planets   |
      | species   |
      | starships |
      | vehicles  |
      | FILMS     |
      | PEOPLE    |
      | PLANETS   |
      | SPECIES   |
      | STARSHIPS |
      | VEHICLES  |
