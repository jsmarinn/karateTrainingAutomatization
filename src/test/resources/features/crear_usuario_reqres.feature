Feature: Creación de usuario en ReqRes
  Background:
    * def configReqRes = read('classpath:configuration/config.json')
    * url configReqRes.urlBaseReqres
    * header x-api-key = "reqres-free-v1"
    * request createUser = read('classpath:data/user_creation_reqres.json')
  Scenario: Creación de usuario exitoso.
    Given path 'users'
    When method post
    Then status 201
    * print response
    * match response == {"name": "Juan", "job": "QA Analyst", "id": "#notnull", "createdAt": "#notnull"}
