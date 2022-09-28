Feature: The HTTP method GET doesn't function correctly against the StarWarsAPI
  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario: Andres is unable to find the cars endpoint within the StarWarsAPI - scenario fail.
    Given path '/cars'
    When method GET
    Then status 404

  Scenario: Andres searches for Joe Haubrich with the StarWarsAPI, returns 200, but the results list is empty containing no results - scenario fail.
    Given path '/people'
    And param search = 'Joe Haubrich'
    When method GET
    Then status 200

    And def apiResponse = response
    Then match apiResponse.results[*] contains []