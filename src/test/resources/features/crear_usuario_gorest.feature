Feature: Creación de usuarios en ReqRes
  Background:
    * def urlGoRest = read('classpath:configuration/config.json')
    * url urlGoRest.urlBaseGoRest
    * def token = urlGoRest.token
  Scenario: Creación de usuario fallida por token inválido.
    Given path 'users'
    When method post
    Then status 401
    * print response