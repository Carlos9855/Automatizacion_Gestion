Feature: As a Nahual volunteer
         I want to verify my access the system
         so I can start using the system features I need 

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I press the "Iniciar con Google" button 
  And I enter my email
  And I hit the "Siguiente" button   
  And I enter my password
  And I tap the "Siguiente" blue button 

Scenario: Verify Access         
  Given I push the "Verificar Acceso" button 
  Then I see the message "Bienvenide"