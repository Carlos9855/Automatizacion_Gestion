Feature: As a Nahual volunteer
         I want to clean the english level filter of the egresades table on companies
         So I can see all the graduates of the different levels of English after filtering 

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

Scenario: clean english level filter of egresades table on companies           
  Given I hit the empresas button on the left part of the main page
  When I see the egresades table on the modules companies page
  And I hit on the filter button with the text "Filtrar" 
  And I press the button with label "Nivel de Ingles" on the new options view
  When I tap on the new option level english button basico
  Then I should only see egresades with "Basico" english level 
  And I press the buton x to close the filter called "Quitar Todos"
  Then I should see egresades with diferent english level