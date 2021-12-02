Feature: As a Nahual volunteer
         I want to load companies view
         so I can start using it

Background:
  Given I am on the Nahual homepage
  When I click the "Iniciar Sesion" button
  When I press the "Iniciar con Google" button 
  And I enter my email
  When I hit the "Siguiente" button
  And I enter my password
  When I tap the "Siguiente" blue button
  Then I should be logged in

Given I push the "Verificar Acceso" button 
  Then I should see the message "Bienvenide"

Scenario: Load Companies View         
  Given I push the "Empresas" button on menu app
  Then I can see the "Empresas" page