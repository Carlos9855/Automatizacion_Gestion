Feature: As a Nahual volunteer
         I want to filter the egresades by nodes Santa fe
         So I will be able to obtain my search for graduates from Santa Fe 

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

Scenario: filter egresades by node Santa Fe          
  Given I click the "Empresas" button
  When I can see the "Empresas" page
  And I click the "Filtrar" button
  And I click the "Nodos" button
  When I press the "Santa Fe" button
  Then I should only see egresades belonging to the Santa Fe node
