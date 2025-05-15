
Feature: Consultar usuarios en el API.
  Background:
    * def urlReqRes = read('classpath:configuration/config.json')
    * url urlReqRes.urlBaseReqres
  Scenario: Obtener el listado de usuarios de la página 2.
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    * print response

  Scenario: Obtener un usuario a partir del id.
    Given path 'users/254'
    When method get
    Then status 200
    * print response


