Feature: The HTTP method HEAD works correctly against the StarWarsAPI

  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario: Andres searches for the endpoint motorcycles and sees that the search fails - scenario fail.
    Given path '/motorcycles'
    When method HEAD
    Then status 404

  Scenario Outline: Andres uses capital letters for endpoint names and sees that it fails - scenario fail.
    Given path '/<endpoints>'
    When method HEAD
    Then status 404

    Examples:
      | endpoints |
      | FILMS     |
      | PEOPLE    |
      | PLANETS   |
      | SPECIES   |
      | STARSHIPS |
      | VEHICLES  |


