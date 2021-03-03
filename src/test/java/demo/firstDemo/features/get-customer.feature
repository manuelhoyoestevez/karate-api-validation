@first-demo
Feature: Tests for the method GET

  Background:
    * def urlApi = 'https://api-irso.herokuapp.com'

  Scenario: Get all resources
    Given url urlApi
    And path 'clientes'
    When method get
    Then status 200
    And match response == { customers: '#[]'}

  Scenario: Validate schema first resource - 01
    Given url urlApi
    And path 'clientes'
    When method get
    Then status 200
    And match response.customers[0] == { id: '#notnull', nombres: '#string', apellido: '#string', direccion: '#string', cod_postal: '#string', telefono: '#string'}

  Scenario: Validate schema first resource - 02
    Given url urlApi
    And path 'clientes'
    When method get
    Then status 200
    And match response.customers[0] ==
    """
    {
      id: '#notnull',
      nombres: '#string',
      apellido: '#string',
      direccion: '#string',
      cod_postal: '#string',
      telefono: '#string'
    }
    """