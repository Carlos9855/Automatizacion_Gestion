Feature: As a Nahual volunteer
         I want to download the Egresados information
         So I can save the information in a file

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

Scenario: Download CSV Egresados file          
  Given I click the "Egresades" button
  When I see the "Egresados" page
  And I click the "Importar" button 
  And I click the "Descargar Ejemplo" button
  Then a CSV file with the filename "example5bb6763d3.csv" should be downloaded 
  