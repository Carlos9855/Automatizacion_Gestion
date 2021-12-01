Feature: As a Nahual volunteer
         I want to filter the egresades by nodes Santa fe
         So I will be able to obtain my search for graduates from Santa Fe 

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I press the "Iniciar con Google" button 
  And I enter my email
  And I hit the "Siguiente" button   
  And I enter my password
  And I tap the "Siguiente" blue button 
  And I push the "Verificar Acceso" button 
  And I see the message "Bienvenide"

Scenario: filter egresades by node Santa Fe          
  Given I hit the empresas button on the left part of the main page
  When I see the egresades table on the modules companies page
  And I hit on the filter button with the text "Filtrar" 
  And I press the node button called "Nodos" on the new options view
  When I click on the new nodes options button "Santa Fe"
  Then I should only see egresades belonging to the Santa Fe node
