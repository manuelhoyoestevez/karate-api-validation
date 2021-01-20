Feature: Test example for the method DELETE

  Background:
    * def apiExample = 'https://api-irso.herokuapp.com'

    # Create resource
    * def resource = { nombres: 'Ciro', apellido: 'Leon', direccion: 'Baires 2021', codPostal: '29650', telefono: '123456789' }
    * def generate_request = read('classpath:examples/secondVersion/data/request/customer.json')
    * def new_resource = call read('classpath:examples/secondVersion/utility/create-customer.feature') { urlApi: '#(apiExample)', request_body: '#(generate_request)' }

  Scenario: Delete resource
    Given url apiExample
    And path 'clientes', new_resource.id
    When method delete
    Then status 204

    # Validation
    * url apiExample
    * path 'clientes', new_resource.id
    * method get
    * status 404