Feature: As a Nahual volunteer
         I want to request access the system
         so I can use the system features I need 

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I press the "Iniciar con Google" button 
  And I enter my email
  And I hit the "Siguiente" button   
  And I enter my password
  And I hit the "Siguiente" button 

Scenario: Request Access
Given I select the "Solicitar" button 
When I fill in the "Motivo" field with "Solcito acceso a la página para poder utilizarla. Esto es una prueba automática"       
And I grip the "Solicitar" button
Then I should have requested access successfully and a message is displayed 