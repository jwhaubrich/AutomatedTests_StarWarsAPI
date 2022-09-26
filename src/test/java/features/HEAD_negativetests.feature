Feature: The HTTP method HEAD works correctly against the StarWarsAPI

  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario: Andres searches for the first person and is returned with information about Luke Skywalker
    Given path '/motorcycles'
    When method HEAD
    Then status 404


