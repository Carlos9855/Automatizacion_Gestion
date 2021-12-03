Feature: As a Nahual volunteer
         I want to filter the egresades by english level
         So I will be able to obtain my search for graduates only with a specific level of English 

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

Scenario Outline: filter egresades by english level           
  Given I click the "Empresas" button
  When I can see the "Empresas" page
  And I click the "Filtrar" button
  And I click the "Nivel de Ingles" button
  When I click on the new option button "<nivelingles>"
  Then I should only see egresades with "<nivelingles>" level of English

  Examples:
        | nivelingles   |
        |   Basico      |
        |   Intermedio  |
        |   Avanzado    |



  