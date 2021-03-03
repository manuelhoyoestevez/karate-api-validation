Feature: Test example for the method GET

  Background:
    # Create resource
    * def resource = { nombres: 'Ciro', apellido: 'Leon', direccion: 'Baires 2021', codPostal: '29650', telefono: '123456789' }
    * def generate_request = read('classpath:demo/secondDemo/data/request/customer.json')
    * def new_resource = call read('classpath:demo/secondDemo/utility/create-customer.feature') { request_body: '#(generate_request)' }

  @second-demo
  Scenario: Get resource - Schema
    Given url urlApiConfig
    And path 'clientes', new_resource.id
    When method get
    Then status 200
    And match response == read('classpath:demo/secondDemo/data/response/customer-schema.json')