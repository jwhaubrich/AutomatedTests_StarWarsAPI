Feature: The HTTP method GET doesn't function correctly against the StarWarsAPI
  Background: Andres is at the base URL for the StarWarsAPI
    * url 'https://swapi.dev/api'
    * header Accept = 'application/json'

  Scenario: Andres is unable to find the cars endpoint within the StarWarsAPI
    Given path '/cars'
    When method GET
    Then status 404

  Scenario: Andres searches for Joe Haubrich with the StarWarsAPI, returns 200, but the results list is empty containing no results
    Given path '/people'
    And param search = 'Joe Haubrich'
    When method GET
    Then status 200

    And def apiResponse = response
    Then match apiResponse.results[*] contains []

#    Given path '/planets'
#    And param search = 'Tatooine'
#    When method GET
#    Then status 200
#    And match header Content-Type contains 'application/json'