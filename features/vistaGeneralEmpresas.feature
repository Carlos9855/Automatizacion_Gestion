Feature: As a Nahual volunteer
         I want to load companies view
         so I can start using it to see egresades table

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I click the "Iniciar con Google" button 
  And I enter my email 
  And I click the "Siguiente" button   
  And I enter my password
  And I click the "Siguiente" button 

  And I click the "Verificar Acceso" button 
  And I see the message "Bienvenide"


Scenario: Load Companies View         
  Given I click the "Empresas" button
  Then I can see the "Empresas" page