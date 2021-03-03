Feature: Utility

  @ignore
  Scenario: Utility Create resource
    * url urlApiConfig
    * path 'clientes'
    * request request_body
    * method post
    * status 201
    * def id = response.id

    # Validation
    * url urlApiConfig
    * path 'clientes', id
    * method get
    * status 200
    * set request_body.id = id
    * match response == request_body