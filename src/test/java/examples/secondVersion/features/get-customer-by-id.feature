Feature: Test example for the method GET

  Background:
    * def apiExample = 'https://api-irso.herokuapp.com'

    # Create resource
    * def resource = { nombres: 'Ciro', apellido: 'Leon', direccion: 'Baires 2021', codPostal: '29650', telefono: '123456789' }
    * def generate_request = read('classpath:examples/secondVersion/data/request/customer.json')
    * def new_resource = call read('classpath:examples/secondVersion/utility/create-customer.feature') { urlApi: '#(apiExample)', request_body: '#(generate_request)' }

  Scenario: Get resource - Schema
    Given url apiExample
    And path 'clientes', new_resource.id
    When method get
    Then status 200
    And match response == read('classpath:examples/secondVersion/data/response/customer-schema.json')