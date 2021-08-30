Feature: Retrieve steps

  Background:
    * def tokenCall = call read('classpath:abc/utility/create-token.feature')
    * def jwt = tokenCall.responseHeaders.Authorization[0]
    * print 'JWT: ', jwt
    * def retrieveStepsResponse = read('classpath:abc/data/retrieveStepsResponse.json')

  Scenario: Retrieve steps OK
    Given url urlApi
    And path '/abc/api/configuration/steps/retrieve'
    And request ''
    And header Content-Type = 'application/json'
    And header Authorization = jwt
    When method post
    Then status 200
    And match response == retrieveStepsResponse
