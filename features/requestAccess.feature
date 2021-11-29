Feature: As a Nahual volunteer
         I want to request access the system
         so I can use it properly 

Background:
  Given I am on the Nahual homepage
  When I click the "Iniciar Sesion" button
  When I press the "Iniciar con Google" button 
  And I enter my email
  When I hit the "Siguiente" button
  And I enter my password
  When I tap the "Siguiente" blue button
  Then I should be logged in

Scenario: Request Access
When I select the "Solicitar" button 
And I fill in the "Motivo" field with "Solcito acceso a la página para poder utilizarla. Esto es una prueba automática"       
And I grip the "Solicitar" button
Then I should have requested access successfully and a message is displayed 