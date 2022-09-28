Feature: The HTTP Method GET works correctly against the StarWarsAPI

  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario Outline: Andres checks all endpoints and ensures that they work correctly
    Given path '/<endpoints>'
    When method OPTIONS
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.name == "<name>"

    Examples:
      | endpoints | name          |
      | films     | Film List     |
      | people    | People List   |
      | planets   | Planet List   |
      | species   | Species List  |
      | starships | Starship List |
      | vehicles  | Vehicle List  |
      |           | Api Root      |