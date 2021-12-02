Feature: As a Nahual volunteer
         I want to see the Nodoes Sedes information
         So I can know which Nodoes Sedes are on the Nhahual platform

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

Scenario: Visualize Nodos Sedes         
  Given I click the "Cursos" button
  When I click the "Nodos Sedes" tab
  Then I see the "Nodos Sedes" list