Feature: As a Nahual volunteer
         I want to see the See More option of a egresade from the egresades table of companies
         So I be able to see all information abaut that the egresade

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

Scenario: See the SeeMore option of a egresades from egresades table companies           
  Given I push the Empresas button on left menu side
  When I can see the table with egresades on the companies modules
  And I click on the button with the shape of an eye located on the right side of the row of the first egresade
  Then I can see the modal with all the complete information of the selected egresade
