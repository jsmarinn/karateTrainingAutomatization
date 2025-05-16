Feature: Actualización de usuario
  Background:
    * def configReq = read('classpath:configuration/config.json')
    * url configReq.urlBaseReqres
    * request updateUser = {"name": "Camilo", "job": "Obrero"}
    * headers configReq.headers
    Scenario: Actualización de usuario de forma exitosa.
      Given path 'users/2'
      When method put
      Then status 200
      * print response
      * match response == {"name": "Camilo", "job": "Obrero", "updatedAt": "#notnull"}
