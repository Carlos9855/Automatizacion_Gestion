Feature: As a Nahual volunteer
         I want to log into the system
         so I can use the system


Scenario: Click Verify Access button        
  Given I am on the Nahual homepage
  When I click  the "Iniciar Sesion" button
  When I press  the "Iniciar con Google" button 
  And I enter my email
  When I hit the "Siguiente" button
  And I enter my password
  When I tap the "Siguiente" blue button
  Then I should be logged in

 