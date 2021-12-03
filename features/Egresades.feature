Feature: As a Nahual volunteer
         I want to see the Egresades information
         So I can know which Egresades are on the Nhahual platform

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

Scenario: Visualize Egresades          
  Given I click the "Egresades" button
  When I click the "Alumnes" tab
  Then I see the "Lista Egresades" list