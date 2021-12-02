Feature: As a Nahual volunteer
         I want to clean the node filter of the egresades table on companies
         So I can see all the egresades of the different nodes after filtering 

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

Scenario: clean nodes filter of egresades table on companies           
  Given I hit the empresas button on the left part of the main page
  When I see the egresades table on the modules companies page
  And I hit on the filter button with the text "Filtrar" 
  And I press the node button called "Nodos" on the new options view
  When I click on the new nodes options button "Santa Fe"
  Then I should only see egresades belonging to the Santa Fe node
  And I press the buton x to close the filter called "Quitar Todos"
  Then I should see egresades from different nodes