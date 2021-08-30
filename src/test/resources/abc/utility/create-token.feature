Feature: Create token

  Background:
    * def tokenRequest = read('classpath:abc/data/tokenRequest.json')
    * def tokenResponse = read('classpath:abc/data/tokenResponse.json')
    * def Helper = Java.type('karate.Helper')

  Scenario: Create token
    Given url urlApi
    And path '/abc/api/security/token2/create'
    And header Content-Type = 'application/json'
    And request tokenRequest
    When method post
    Then status 200
    And match response == tokenResponse
    And assert Helper.checkToken(responseHeaders.Authorization[0])
