@http
Feature: http query parameter
  can work with http query parameters

  Background:
    * dir: features/http
    * base uri: http://localhost:10080

  Scenario: parameter in uri
    * uri: /users?name=jakim&age=18
    * send: GET
    * verify: 'name'="jakim"
    * verify: 'age'=18
    * verify: 'iq'=80.0