Feature: As a Nahual volunteer
         I want to download the Egresados information
         So I can save the information in a file

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

Scenario: Download CSV Egresados file          
  Given I push the "Egresades" button on the left sidebar
  When I see the "Egresados" page
  And I click the "Importar" button on the right 
  And I press the "Descargar Ejemplo" button on the modal
  Then a CSV file with the filename "example5bb6763d3.csv" should be downloaded 
  