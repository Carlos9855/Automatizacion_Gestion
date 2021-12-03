Feature: As a Nahual volunteer
         I want to see the modules of a egresade from the egresades table of companies
         So I be able to see all modules that the egresade coursed

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

Scenario: See the modules of a egresades from egresades table companies           
  Given I click the "Empresas" button
  When I can see the "Empresas" page
  And I click the "Ver Modulos" button
  Then I can see the modal titled "Cursos Realizados" with information about the modules taken by the graduate
