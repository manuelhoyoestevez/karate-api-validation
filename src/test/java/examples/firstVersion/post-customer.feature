Feature: Tests for the method POST

  Scenario: Create resource
    * def new_resource = { nombres: 'nestor', apellido: 'ramos', direccion: 'baires 100', cod_postal: '28019', telefono: '123456789'}

    # Create resource
    Given url 'https://api-irso.herokuapp.com'
    And path 'clientes'
    And request new_resource
    When method post
    Then status 201
    * def id = response.id

    # Validate resource
    * url 'https://api-irso.herokuapp.com'
    * path 'clientes', id
    * method get
    * status 200
    * set new_resource.id = id
    * match response == new_resource