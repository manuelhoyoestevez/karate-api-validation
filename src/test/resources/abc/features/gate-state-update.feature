Feature: Gate state update

  Background:
    * def tokenCall = call read('classpath:abc/utility/create-token.feature')
    * def jwt = tokenCall.responseHeaders.Authorization[0]
    * print 'JWT: ', jwt
    * def gateStateUpdateRequest = read('classpath:abc/data/gateStateUpdateRequest.json')
    * def gateStateUpdateResponse = read('classpath:abc/data/gateStateUpdateResponse.json')

  Scenario: Retrieve steps OK
    Given url urlApi
    And path '/abc/api/gate/state/update'
    And request gateStateUpdateRequest
    And header Content-Type = 'application/json'
    And header Authorization = jwt
    When method post
    Then status 200
    And match response == gateStateUpdateResponse
