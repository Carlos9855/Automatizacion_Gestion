Feature: As a Nahual volunteer
         I want to clean the english level filter of the egresades table on companies
         So I can see all the graduates of the different levels of English after filtering 

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

Scenario: clean english level filter of egresades table on companies           
  Given I click the "Empresas" button
  When I can see the "Empresas" page
  And I click the "Filtrar" button
  And I click the "Nivel de Ingles" button
  When I click on the "Basico" English level button 
  Then I should only see egresades with "Basico" english level 
  When I press the buton x to close the filter called "Quitar Todos"
  Then I should see egresades with diferent english level