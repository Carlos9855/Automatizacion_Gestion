Feature: As a Nahual volunteer
         I want to filter the egresades by english level
         So I will be able to obtain my search for graduates only with a specific level of English 

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

Scenario Outline: filter egresades by english level           
  Given I push the "Empresas" button on the left menu of the page
  When I see the "Egresades" table on companies page
  And I click the filter button with the text "Filtrar" 
  And I press the button with label "Nivel de Ingles" on the new options view
  When I click on the new option button "<nivelingles>"
  Then I should only see egresades with "<nivelingles>" level of English

  Examples:
        | nivelingles   |
        |   Basico      |
        |   Intermedio  |
        |   Avanzado    |



  