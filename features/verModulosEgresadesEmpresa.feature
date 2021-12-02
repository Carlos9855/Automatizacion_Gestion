Feature: As a Nahual volunteer
         I want to see the modules of a egresade from the egresades table of companies
         So I be able to see all modules that the egresade coursed

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

Scenario: See the modules of a egresades from egresades table companies           
  Given I hit the empresas button on left menu of the main page
  When I can see the egresades table on companies
  And I click the green button called Ver Modulos in the first egresade
  Then I can see the modal titled "Cursos Realizados" with information about the modules taken by the graduate
