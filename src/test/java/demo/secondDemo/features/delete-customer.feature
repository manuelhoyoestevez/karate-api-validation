Feature: Test example for the method DELETE

  Background:
    # Create resource
    * def resource = { nombres: 'Ciro', apellido: 'Leon', direccion: 'Baires 2021', codPostal: '29650', telefono: '123456789' }
    * def generate_request = read('classpath:demo/secondDemo/data/request/customer.json')
    * def new_resource = call read('classpath:demo/secondDemo/utility/create-customer.feature') { request_body: '#(generate_request)' }

  @second-demo
  Scenario: Delete resource
    Given url urlApiConfig
    And path 'clientes', new_resource.id
    When method delete
    Then status 204

    # Validation
    * url urlApiConfig
    * path 'clientes', new_resource.id
    * method get
    * status 404