Feature: As a Nahual volunteer
         I want to verify my access the system
         so I can start using it

Background:
  Given I am on the Nahual homepage
  When I click the "Iniciar Sesion" button
  When I press the "Iniciar con Google" button 
  And I enter my email
  When I hit the "Siguiente" button
  And I enter my password
  When I tap the "Siguiente" blue button
  Then I should be logged in

  Given I push the "Verificar Acceso" button 
  Then I should see the message "Bienvenide"

Scenario: Download CSV Egresados file          
  Given I push the "Egresades" button on the left sidebar
  Then I should see the "Egresados" page
  When I click the "Importar" button on the right 
  And I press the "Descargar Ejemplo" button on the modal
  Then a CSV file with the filename "example5bb6763d3.csv" should be downloaded 
  
