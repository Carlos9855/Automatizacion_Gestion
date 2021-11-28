Feature: As a Nahual volunteer
         I want to logout from the system
         so I can stop using it 

Background:
  Given I am on the Nahual homepage
  When I click the "Iniciar Sesion" button
  When I press the "Iniciar con Google" button 
  And I enter my email
  When I hit the "Siguiente" button
  And I enter my password
  When I tap the "Siguiente" blue button
  Then I should be logged in

Scenario: Logout
When I click the arrow button next to my username 
And I click "Cerrar Sesión" button        
Then I should logout form the system 