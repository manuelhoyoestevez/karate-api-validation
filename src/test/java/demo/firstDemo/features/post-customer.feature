Feature: Tests for the method POST

  Background:
    * def urlApi = 'https://api-irso.herokuapp.com'

  @first-demo
  Scenario: Create resource
    * def new_resource = { nombres: 'nestor', apellido: 'ramos', direccion: 'baires 100', cod_postal: '28019', telefono: '123456789'}

    # Create resource
    Given url urlApi
    And path 'clientes'
    And request new_resource
    When method post
    Then status 201
    * def id = response.id

    # Validate resource
    * url urlApi
    * path 'clientes', id
    * method get
    * status 200
    * set new_resource.id = id
    * match response == new_resource